package com.bbqsoft.teamsmanagement.infrastructure.controllers

import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/v1/championships/")
class ObtainChampionshipController {

        @GetMapping("/statistics")
        fun obtainChampionshipStatics(): ResponseEntity<String> {
            return ResponseEntity.ok("Championship statistics")
        }
}