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
    var points: Int,

    @Column(nullable = false)
    var position: Int,

    @Column(nullable = false)
    var isDnf: Boolean,

    @Column(nullable = false)
    var compensationWeight: Int = 0

) : BaseEntity()

