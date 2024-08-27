package com.bbqsoft.teamsmanagement.infrastructure.controllers

import com.bbqsoft.teamsmanagement.application.DriverService

import com.bbqsoft.teamsmanagement.infrastructure.controllers.model.DriverResponse
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/v1/drivers")
class DriverController(private val driverService: DriverService) {

    @GetMapping
    fun getAllDrivers(): ResponseEntity<List<DriverResponse>> {
        val drivers = driverService.getAllDrivers()
        return ResponseEntity.ok(drivers)
    }
}