package com.bbqsoft.teamsmanagement.application

import com.bbqsoft.teamsmanagement.infrastructure.controllers.model.DriverResponse
import com.bbqsoft.teamsmanagement.infrastructure.repository.DriverRepository
import com.bbqsoft.teamsmanagement.infrastructure.repository.RaceResultRepository
import com.bbqsoft.teamsmanagement.infrastructure.repository.models.Driver
import com.bbqsoft.teamsmanagement.infrastructure.repository.models.RaceResult
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional
import java.util.*

@Service
class DriverService(
    private val driverRepository: DriverRepository,
    private val raceResultRepository: RaceResultRepository
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

    private fun Driver.getRaceResults(): List<RaceResult> {
        return raceResultRepository.findByDriver(this)
    }
}
