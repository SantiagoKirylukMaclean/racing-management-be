package com.bbqsoft.teamsmanagement.application

import com.bbqsoft.teamsmanagement.infrastructure.repository.DriverRepository
import com.bbqsoft.teamsmanagement.infrastructure.repository.models.Driver
import com.bbqsoft.teamsmanagement.infrastructure.repository.models.RaceResult
import com.bbqsoft.teamsmanagement.infrastructure.repository.models.RaceSessionType
import org.springframework.stereotype.Service

@Service
class ChampionshipService(private val driverRepository: DriverRepository,
                          private val driverService: DriverService) {

    fun getAllDrivers(): List<DriverResponse> {
        val drivers = driverRepository.findAll()
        return drivers.map { driver ->
            val raceResults = getRaceResults(driver)
            DriverResponse(
                firstName = driver.firstName,
                lastName = driver.lastName,
                team = driver.team.name,
                championshipStandings = raceResults.sumOf { it.points },
                qualify = raceResults.filter { it.raceSession.type == RaceSessionType.QUALIFYING }.sumOf { it.points },
                qualifyingPosition = raceResults.filter { it.raceSession.type == RaceSessionType.QUALIFYING }.minOfOrNull { it.position } ?: 0,
                race = raceResults.filter { it.raceSession.type == RaceSessionType.RACE1 || it.raceSession.type == RaceSessionType.RACE2 }.sumOf { it.points },
                isWorldTour = true, // Adjust this according to your logic
                isDnf = raceResults.any { it.isDnf },
                id = driver.id.toString()
            )
        }
    }


    private fun getRaceResults(driver: Driver): List<RaceResult> {
        // Add logic to get race results for the driver
        return driverService.getRaceResults(driver.id)
    }
}