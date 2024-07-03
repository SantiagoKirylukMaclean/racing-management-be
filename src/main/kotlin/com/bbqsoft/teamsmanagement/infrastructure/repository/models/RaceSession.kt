package com.bbqsoft.teamsmanagement.infrastructure.repository.models

import jakarta.persistence.*

@Entity
@Table(name = "race_sessions")
data class RaceSession(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    val id: Long = 0,

    @ManyToOne
    @JoinColumn(name = "race_id")
    val race: Race,

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    val type: RaceSessionType,

    @OneToMany(mappedBy = "raceSession", cascade = [CascadeType.ALL], orphanRemoval = true)
    val results: MutableList<RaceResult> = mutableListOf()

) : BaseEntity()
