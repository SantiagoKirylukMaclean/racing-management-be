package com.bbqsoft.teamsmanagement.application

data class DriverResponse(
    val firstName: String,
    val lastName: String,
    val team: String,
    val championshipStandings: Int,
    val qualify: Int,
    val qualifyingPosition: Int,
    val race: Int,
    val race2Position: Int,
    val isWorldTour: Boolean,
    val isDnf: Boolean,
    val id: String,
    var weight: Int = 0,
)
