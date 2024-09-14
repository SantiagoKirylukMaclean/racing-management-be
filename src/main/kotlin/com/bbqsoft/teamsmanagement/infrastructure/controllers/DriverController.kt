package com.bbqsoft.teamsmanagement.infrastructure.controllers

import com.bbqsoft.teamsmanagement.application.DriverService
import com.bbqsoft.teamsmanagement.infrastructure.controllers.model.CreateDriverRequest

import com.bbqsoft.teamsmanagement.infrastructure.controllers.model.DriverResponse
import org.springframework.http.HttpStatus
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.*

@RestController
@RequestMapping("/v1/drivers")
class DriverController(private val driverService: DriverService) {

    @GetMapping
    fun getAllDrivers(): ResponseEntity<List<DriverResponse>> {
        val drivers = driverService.getAllDrivers()
        return ResponseEntity.ok(drivers)
    }

    @PostMapping
    fun createDriver(@RequestBody request: CreateDriverRequest): ResponseEntity<DriverResponse> {
        val createdDriver = driverService.createDriver(request)
        return ResponseEntity.status(HttpStatus.CREATED).body(createdDriver)
    }

    @DeleteMapping("/{id}")
    fun deleteDriver(@PathVariable id: Long): ResponseEntity<Void> {
        driverService.deleteDriverById(id)
        return ResponseEntity.noContent().build()
    }
}