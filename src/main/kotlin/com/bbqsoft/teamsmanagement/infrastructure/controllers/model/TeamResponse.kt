package com.bbqsoft.teamsmanagement.infrastructure.controllers.model

data class TeamResponse(
    val id: Long,
    val name: String,
    val drivers: List<String> // Listado de nombres completos de los drivers
)