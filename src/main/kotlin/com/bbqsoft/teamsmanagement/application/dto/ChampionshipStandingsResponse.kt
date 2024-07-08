package com.bbqsoft.teamsmanagement.application.dto

import com.bbqsoft.teamsmanagement.infrastructure.repository.models.RaceSessionType

data class ChampionshipStandingsResponse (
    val firstName: String,
    val lastName: String,
    val team: String,
    val championshipStandings: Int,
    val id: String,
    val races: List<RaceResponse>
)

data class RaceResponse(
    val name: String,
    val raceResults: List<RaceResultResponse>
)

data class RaceResultResponse(
    val sessionType: RaceSessionType,
    val position: Int,
    val points: Int
)
