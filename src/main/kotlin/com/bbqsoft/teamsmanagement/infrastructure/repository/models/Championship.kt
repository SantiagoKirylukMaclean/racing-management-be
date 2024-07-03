package com.bbqsoft.teamsmanagement.infrastructure.repository.models

import jakarta.persistence.*

@Entity
@Table(name = "championships")
data class Championship(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    val id: Long = 0,

    @Column(nullable = false)
    val year: Int,

    @OneToMany(mappedBy = "championship", cascade = [CascadeType.ALL], orphanRemoval = true)
    val races: MutableList<Race> = mutableListOf()

) : BaseEntity()
