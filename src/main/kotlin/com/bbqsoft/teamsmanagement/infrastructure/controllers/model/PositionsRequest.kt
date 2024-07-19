package com.bbqsoft.teamsmanagement.infrastructure.controllers.model

import com.bbqsoft.teamsmanagement.infrastructure.repository.models.RaceSessionType

data class PositionUpdateRequest(
    val sessionType: RaceSessionType,
    val raceId: Long,
    val positions: List<PositionsRequest>,
)

data class PositionsRequest(
    val driverId: Long,
    val position: Int,
    val isDnf: Boolean,
)