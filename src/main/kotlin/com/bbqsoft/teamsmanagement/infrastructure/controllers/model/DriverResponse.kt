package com.bbqsoft.teamsmanagement.infrastructure.controllers.model

data class DriverResponse(
    val id: Long,
    val firstName: String,
    val lastName: String,
    val teamName: String
)