package com.bbqsoft.teamsmanagement.infrastructure.controllers

import com.bbqsoft.teamsmanagement.application.ChampionshipService
import com.bbqsoft.teamsmanagement.application.DriverResponse
import com.bbqsoft.teamsmanagement.application.dto.ChampionshipStandingsResponse
import com.bbqsoft.teamsmanagement.domain.Driver
import com.bbqsoft.teamsmanagement.domain.Team
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController
import java.util.*

@RestController
@RequestMapping("/v1/championships/")
class ObtainChampionshipController(private val championshipService: ChampionshipService) {

    //TODO: Remove
    @GetMapping("/statistics")
    fun obtainChampionshipStatics(): ResponseEntity<List<Driver>> {
        return ResponseEntity.ok(getDriverStatics())
    }

    //Simulate Race and Simulate weekend.
    @GetMapping("/positions")
    fun obtainChampionshipPositions(): ResponseEntity<List<DriverResponse>> {
        return ResponseEntity.ok(championshipService.getAllDrivers())
    }

    //Standings
    @GetMapping("/fullPositions")
    fun obtainChampionshipFullPositions(): ResponseEntity<List<ChampionshipStandingsResponse>> {
        return ResponseEntity.ok(championshipService.getChampionshipStandings())
    }


    private fun getDriverStatics(): List<Driver> {
        val drivers = mutableListOf<Driver>()

        // Driver 1
        drivers.add(
            Driver(
                "Néstor",
                "Girolami",
                Team.Hyundai,
                38,
                6,
                4,
                20,
                true,
                false,
                UUID.fromString("1d1e39f1-3173-469d-8d51-b9b0c8553998"),
                40
            )
        )

        // Driver 2
        drivers.add(
            Driver(
                "Santiago",
                "Urrutia",
                Team.Cyan,
                39,
                10,
                2,
                25,
                true,
                false,
                UUID.fromString("6182b28b-4b50-4d12-b800-1415de59a920"),
                30
            )
        )

        // Driver 3
        drivers.add(
            Driver(
                "John",
                "Filippi",
                Team.Volcano,
                24,
                4,
                5,
                16,
                true,
                false,
                UUID.fromString("cbf2c2c1-18a0-4dc9-aa55-190ad67aa82e")
            )
        )

        // Driver 4
        drivers.add(
            Driver(
                "Ma Qing",
                "Hua",
                Team.Cyan,
                22,
                0,
                10,
                14,
                true,
                false,
                UUID.fromString("e3c8966a-1a34-4ed3-8541-0672d5f2d06f"),
                30
            )
        )

        // Driver 5
        drivers.add(
            Driver(
                "Marco",
                "Butti",
                Team.Goat,
                42,
                0,
                12,
                0,
                true,
                false,
                UUID.fromString("2f646a1c-f9b1-4e57-9442-b7e2878e2de7"),
                20
            )
        )

        // Driver 6
        drivers.add(
            Driver(
                "Thed",
                "Björk",
                Team.Cyan,
                38,
                0,
                11,
                12,
                true,
                false,
                UUID.fromString("ac18077f-3288-4d2b-a4b1-09ec6bf5d59a"),
                10
            )
        )

        // Driver 7
        drivers.add(
            Driver(
                "Mikel",
                "Azcona",
                Team.Hyundai,
                46,
                2,
                6,
                18,
                true,
                false,
                UUID.fromString("349c3e43-1b03-4705-bf57-23b4bc82594a")
            )
        )

        // Driver 8
        drivers.add(
            Driver(
                "Esteban",
                "Guerrieri",
                Team.Goat,
                42,
                0,
                9,
                10,
                true,
                false,
                UUID.fromString("2d61b02d-15d8-4467-9932-3463e23b180f")
            )
        )

        // Driver 9
        drivers.add(
            Driver(
                "Yann",
                "Ehrlacher",
                Team.Cyan,
                37,
                15,
                1,
                30,
                true,
                false,
                UUID.fromString("8539155b-f3b9-49bb-88f4-123a9ff6d6a0")
            )
        )

        // Driver 10
        drivers.add(
            Driver(
                "Norbert",
                "Michelisz",
                Team.Hyundai,
                61,
                8,
                3,
                22,
                true,
                false,
                UUID.fromString("ae8d7c6e-00f8-4f4a-8d46-b0b6158c9b59")
            )
        )

        // Driver 11
        drivers.add(
            Driver(
                "Sami",
                "Taoufik",
                Team.Volcano,
                0,
                0,
                14,
                8,
                true,
                false,
                UUID.fromString("1591292f-1db8-4e51-9a48-d81d3c206120")
            )
        )

        // Driver 12
        drivers.add(
            Driver(
                "Mehdi",
                "Bennani",
                Team.Claire,
                0,
                0,
                13,
                6,
                true,
                false,
                UUID.fromString("70069eb8-9381-4711-8fc9-5f9fc8605b39")
            )
        )

        // Driver 13
        drivers.add(
            Driver(
                "Victor",
                "Fernández",
                Team.Otro,
                0,
                0,
                15,
                4,
                false,
                false,
                UUID.fromString("70099b92-2d0d-4f15-888f-24edf290e207")
            )
        )

        // Driver 14
        drivers.add(
            Driver(
                "Dušan",
                "Borković",
                Team.Otro,
                0,
                0,
                8,
                0,
                false,
                false,
                UUID.fromString("ff1c8433-fa09-4052-9246-798924b3f834")
            )
        )

        // Driver 15
        drivers.add(
            Driver(
                "Julien",
                "Piguet",
                Team.Otro,
                0,
                0,
                7,
                0,
                false,
                false,
                UUID.fromString("95d11a2b-78cb-4a15-8559-4cd36753505e")
            )
        )

        return drivers
    }

}