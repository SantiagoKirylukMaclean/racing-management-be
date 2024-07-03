package com.bbqsoft.teamsmanagement.infrastructure.repository

import com.bbqsoft.teamsmanagement.infrastructure.repository.models.Driver
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository

@Repository
interface DriverRepository : JpaRepository<Driver, Long>
