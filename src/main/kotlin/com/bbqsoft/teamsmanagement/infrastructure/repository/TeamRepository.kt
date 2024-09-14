package com.bbqsoft.teamsmanagement.infrastructure.repository

import com.bbqsoft.teamsmanagement.infrastructure.repository.models.Team
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository

@Repository
interface TeamRepository : JpaRepository<Team, Long>
