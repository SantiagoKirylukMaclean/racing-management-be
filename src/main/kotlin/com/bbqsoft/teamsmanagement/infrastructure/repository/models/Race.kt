package com.bbqsoft.teamsmanagement.infrastructure.repository.models

import jakarta.persistence.*

@Entity
@Table(name = "races")
data class Race(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    val id: Long = 0,

    @ManyToOne
    @JoinColumn(name = "circuit_id")
    val circuit: Circuit,

    @ManyToOne
    @JoinColumn(name = "championship_id")
    val championship: Championship,

    @OneToMany(mappedBy = "race", cascade = [CascadeType.ALL], orphanRemoval = true)
    val sessions: MutableList<RaceSession> = mutableListOf(),

    @Column(nullable = false)
    val date: String

) : BaseEntity()
