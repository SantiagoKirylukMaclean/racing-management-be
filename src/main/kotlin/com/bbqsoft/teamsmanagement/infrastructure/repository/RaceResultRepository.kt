package com.bbqsoft.teamsmanagement.infrastructure.repository

import com.bbqsoft.teamsmanagement.infrastructure.repository.models.Driver
import com.bbqsoft.teamsmanagement.infrastructure.repository.models.RaceResult
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository
import java.util.*

@Repository
interface RaceResultRepository : JpaRepository<RaceResult, UUID> {
    fun findByDriver(driver: Driver): List<RaceResult>
}
