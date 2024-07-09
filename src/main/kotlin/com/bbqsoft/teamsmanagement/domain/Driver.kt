package com.bbqsoft.teamsmanagement.domain

import java.util.UUID



data class Driver(
    val firstName: String,
    val lastName: String,
    val team: Team,
    val championshipStandings: Int,
    val qualify: Int,
    val qualifyingPosition: Int,
    val race: Int,
    val isWorldTour: Boolean,
    val isDnf: Boolean,
    val id: UUID,
    val weight: Int? = 0,
)