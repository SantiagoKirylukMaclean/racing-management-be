package com.bbqsoft.teamsmanagement.application

import com.bbqsoft.teamsmanagement.application.dto.ChampionshipStandingsResponse
import com.bbqsoft.teamsmanagement.application.dto.RaceResponse
import com.bbqsoft.teamsmanagement.application.dto.RaceResultResponse
import com.bbqsoft.teamsmanagement.infrastructure.repository.DriverRepository
import com.bbqsoft.teamsmanagement.infrastructure.repository.RaceRepository
import com.bbqsoft.teamsmanagement.infrastructure.repository.models.Driver
import com.bbqsoft.teamsmanagement.infrastructure.repository.models.RaceResult
import com.bbqsoft.teamsmanagement.infrastructure.repository.models.RaceSessionType
import org.springframework.stereotype.Service

@Service
class ChampionshipService(private val driverRepository: DriverRepository,
                          private val driverService: DriverService,
                          private val raceRepository: RaceRepository
) {

    fun getAllDrivers(): List<DriverResponse> {
        val drivers = driverRepository.findAll()
        return drivers.map { driver ->
            val raceResults = getRaceResults(driver)
            DriverResponse(
                firstName = driver.firstName,
                lastName = driver.lastName,
                team = driver.team.name,
                championshipStandings = raceResults.filterNot { it.race.id == 4L }.sumOf { it.points },
                qualify = raceResults.filter { it.sessionType == RaceSessionType.QUALIFYING && it.race.id == 4L }.sumOf { it.points },
                qualifyingPosition = raceResults.filter { it.sessionType == RaceSessionType.QUALIFYING && it.race.id == 4L}.minOfOrNull { it.position } ?: 0,
                race = raceResults.filter { it.sessionType == RaceSessionType.RACE1 && it.race.id == 4L }.sumOf { it.points },
                race2Position = raceResults.filter { it.sessionType == RaceSessionType.RACE2 && it.race.id == 4L}.minOfOrNull { it.position } ?: 0,
                isWorldTour = true, // Adjust this according to your logic
                isDnf = raceResults.firstOrNull { it.sessionType == RaceSessionType.RACE2 && it.race.id == 4L }?.isDnf
                    ?: false,
                id = driver.id.toString(),
                weight = raceResults.maxOf { it.compensationWeight }
            )
        }
    }

    fun getChampionshipStandings(): List<ChampionshipStandingsResponse> {
        val drivers = driverRepository.findAll()
        return drivers.map { driver ->
            val raceResults = getRaceResults(driver)
            val races = raceResults.groupBy { it.race }.map { (raceId, results) ->
                val raceName = raceRepository.findById(raceId.id).orElseThrow() // Obtén el nombre de la carrera
                RaceResponse(
                    name = raceName.circuit.name,
                    raceResults = results.map {
                        RaceResultResponse(
                            sessionType = it.sessionType,
                            position = it.position,
                            points = it.points
                        )
                    }
                )
            }
            ChampionshipStandingsResponse(
                firstName = driver.firstName,
                lastName = driver.lastName,
                team = driver.team.name,
                championshipStandings = raceResults.sumOf { it.points },
                id = driver.id.toString(),
                races = races
            )
        }
    }


    private fun getRaceResults(driver: Driver): List<RaceResult> {
        // Add logic to get race results for the driver
        return driverService.getRaceResults(driver.id)
    }
}