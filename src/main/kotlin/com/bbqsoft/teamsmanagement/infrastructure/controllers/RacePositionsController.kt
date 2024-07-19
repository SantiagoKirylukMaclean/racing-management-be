package com.bbqsoft.teamsmanagement.infrastructure.controllers

import com.bbqsoft.teamsmanagement.application.RacePositionsService
import com.bbqsoft.teamsmanagement.infrastructure.controllers.model.PositionUpdateRequest
import com.bbqsoft.teamsmanagement.infrastructure.controllers.model.PositionsRequest
import com.bbqsoft.teamsmanagement.infrastructure.repository.models.RaceSessionType
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/v1/")
class RacePositionsController(private val racePositionsService: RacePositionsService) {

    @PostMapping("/positions")
    fun updatePositions(
        @RequestBody positions: PositionUpdateRequest
    ): ResponseEntity<Void> {
        racePositionsService.updatePositions(
            positionUpdates = positions.positions,
            positions.sessionType,
            positions.raceId)
        return ResponseEntity.noContent().build()
    }
}