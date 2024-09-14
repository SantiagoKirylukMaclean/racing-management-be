package com.bbqsoft.teamsmanagement.application

import com.bbqsoft.teamsmanagement.infrastructure.controllers.model.TeamResponse
import com.bbqsoft.teamsmanagement.infrastructure.repository.TeamRepository
import org.springframework.stereotype.Service

@Service
class TeamService(private val teamRepository: TeamRepository) {

    fun getAllTeams(): List<TeamResponse> {
        val teams = teamRepository.findAll()
        return teams.map { team ->
            TeamResponse(
                id = team.id,
                name = team.name,
                drivers = team.drivers.map { driver ->
                    "${driver.firstName} ${driver.lastName}"
                }
            )
        }
    }
}