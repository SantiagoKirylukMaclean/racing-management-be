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

    @Column(nullable = false)
    val date: String,

    @OneToMany(mappedBy = "race", cascade = [CascadeType.ALL], orphanRemoval = true)
    val results: MutableList<RaceResult> = mutableListOf()
) : BaseEntity()
