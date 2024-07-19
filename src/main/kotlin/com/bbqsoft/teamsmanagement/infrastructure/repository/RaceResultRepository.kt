package com.bbqsoft.teamsmanagement.infrastructure.repository

import com.bbqsoft.teamsmanagement.infrastructure.repository.models.Driver
import com.bbqsoft.teamsmanagement.infrastructure.repository.models.Race
import com.bbqsoft.teamsmanagement.infrastructure.repository.models.RaceResult
import com.bbqsoft.teamsmanagement.infrastructure.repository.models.RaceSessionType
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository
import java.util.*

@Repository
interface RaceResultRepository : JpaRepository<RaceResult, Long> {
    fun findByDriver(driver: Driver): List<RaceResult>
    fun findByDriverAndSessionTypeAndRace(driver: Driver, session: RaceSessionType, race: Race): Optional<RaceResult>
}
