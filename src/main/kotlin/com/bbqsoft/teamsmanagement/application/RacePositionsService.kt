package com.bbqsoft.teamsmanagement.application

import com.bbqsoft.teamsmanagement.application.utils.RacePointsByPosition
import com.bbqsoft.teamsmanagement.infrastructure.controllers.model.PositionsRequest
import com.bbqsoft.teamsmanagement.infrastructure.repository.DriverRepository
import com.bbqsoft.teamsmanagement.infrastructure.repository.RaceRepository
import com.bbqsoft.teamsmanagement.infrastructure.repository.RaceResultRepository
import com.bbqsoft.teamsmanagement.infrastructure.repository.models.RaceSessionType
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional

@Service
class RacePositionsService(
    private val raceResultRepository: RaceResultRepository,
    private val driverRepository: DriverRepository,
    private val raceRepository: RaceRepository
) {

    @Transactional
    fun updatePositions(positionUpdates: List<PositionsRequest>, sessionType: RaceSessionType, raceId: Long) {
        positionUpdates.forEach { positionUpdate ->
            val driver = driverRepository.findById(positionUpdate.driverId).orElseThrow {
                IllegalArgumentException("Driver with id ${positionUpdate.driverId} not found")
            }
            val race = raceRepository.findById(raceId).orElseThrow {
                IllegalArgumentException("Driver with id ${positionUpdate.driverId} not found")
            }
            val raceResult = raceResultRepository.findByDriverAndSessionTypeAndRace(driver,sessionType, race).orElseThrow {
                IllegalArgumentException("RaceResult with id ${positionUpdate.driverId} not found")
            }
            raceResult.position = positionUpdate.position
            raceResult.isDnf = positionUpdate.isDnf
            raceResult.points = if (positionUpdate.isDnf) 0 else RacePointsByPosition.getPointsByPositionAndSessionType(positionUpdate.position, raceResult.sessionType)
            raceResultRepository.save(raceResult)
        }
    }
}
