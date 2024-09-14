package com.bbqsoft.teamsmanagement.infrastructure.controllers

import com.bbqsoft.teamsmanagement.application.TeamService
import com.bbqsoft.teamsmanagement.infrastructure.controllers.model.TeamResponse
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/v1/teams/2024")//TODO: change by id.
class TeamController(private val teamService: TeamService) {

    @GetMapping
    fun getAllTeams(): ResponseEntity<List<TeamResponse>> {
        val teams = teamService.getAllTeams()
        return ResponseEntity.ok(teams)
    }
}