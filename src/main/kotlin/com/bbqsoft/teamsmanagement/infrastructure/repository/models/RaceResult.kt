package com.bbqsoft.teamsmanagement.infrastructure.repository.models

import jakarta.persistence.*

@Entity
@Table(name = "race_results")
data class RaceResult(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    val id: Long = 0,

    @ManyToOne
    @JoinColumn(name = "race_id")
    val race: Race,

    @ManyToOne
    @JoinColumn(name = "driver_id")
    val driver: Driver,

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    val sessionType: RaceSessionType,

    @Column(nullable = false)
    val points: Int,

    @Column(nullable = false)
    val position: Int,

    @Column(nullable = false)
    val isDnf: Boolean
) : BaseEntity()

