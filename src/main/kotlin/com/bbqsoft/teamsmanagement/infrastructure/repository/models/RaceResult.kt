package com.bbqsoft.teamsmanagement.infrastructure.repository.models

import jakarta.persistence.*

@Entity
@Table(name = "race_results")
data class RaceResult(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    val id: Long = 0,

    @ManyToOne
    @JoinColumn(name = "race_session_id")
    val raceSession: RaceSession,

    @ManyToOne
    @JoinColumn(name = "driver_id")
    val driver: Driver,

    @Column(nullable = false)
    val points: Int,

    @Column(nullable = false)
    val position: Int,

    @Column(nullable = false)
    val isDnf: Boolean

) : BaseEntity()
