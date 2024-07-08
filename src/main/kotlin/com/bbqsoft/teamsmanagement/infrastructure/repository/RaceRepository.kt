package com.bbqsoft.teamsmanagement.infrastructure.repository

import com.bbqsoft.teamsmanagement.infrastructure.repository.models.Race
import org.springframework.data.jpa.repository.JpaRepository

interface RaceRepository : JpaRepository<Race, Long> {
}