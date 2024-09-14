package com.bbqsoft.teamsmanagement.application

import com.bbqsoft.teamsmanagement.infrastructure.controllers.model.CreateDriverRequest
import com.bbqsoft.teamsmanagement.infrastructure.controllers.model.DriverResponse
import com.bbqsoft.teamsmanagement.infrastructure.repository.DriverRepository
import com.bbqsoft.teamsmanagement.infrastructure.repository.RaceResultRepository
import com.bbqsoft.teamsmanagement.infrastructure.repository.TeamRepository
import com.bbqsoft.teamsmanagement.infrastructure.repository.models.Driver
import com.bbqsoft.teamsmanagement.infrastructure.repository.models.RaceResult
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional
import java.util.*

@Service
class DriverService(
    private val driverRepository: DriverRepository,
    private val raceResultRepository: RaceResultRepository,
    private val teamRepository: TeamRepository,
) {

    @Transactional(readOnly = true)
    fun getRaceResults(driverId: Long): List<RaceResult> {
        val driver = driverRepository.findById(driverId)
            .orElseThrow { IllegalArgumentException("Driver not found") }
        return driver.getRaceResults()
    }

    fun getAllDrivers(): List<DriverResponse> {
        val drivers = driverRepository.findAll()
        return drivers.map { driver ->
            DriverResponse(
                id = driver.id,
                firstName = driver.firstName,
                lastName = driver.lastName,
                teamName = driver.team.name
            )
        }
    }

    @Transactional
    fun createDriver(request: CreateDriverRequest): DriverResponse {
        val team = teamRepository.findById(request.teamId)
            .orElseThrow { IllegalArgumentException("Team with ID ${request.teamId} not found") }

        val newDriver = Driver(
            firstName = request.firstName,
            lastName = request.lastName,
            team = team
        )

        val savedDriver = driverRepository.save(newDriver)

        return DriverResponse(
            id = savedDriver.id,
            firstName = savedDriver.firstName,
            lastName = savedDriver.lastName,
            teamName = savedDriver.team.name
        )
    }

    fun deleteDriverById(id: Long) {
        if (!driverRepository.existsById(id)) {
            throw IllegalArgumentException("Driver with ID $id not found")
        }
        driverRepository.deleteById(id)
    }

    private fun Driver.getRaceResults(): List<RaceResult> {
        return raceResultRepository.findByDriver(this)
    }
}
