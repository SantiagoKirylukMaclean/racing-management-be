package com.bbqsoft.teamsmanagement.infrastructure.controllers.model

data class CreateDriverRequest(
    val firstName: String,
    val lastName: String,
    val teamId: Long
)