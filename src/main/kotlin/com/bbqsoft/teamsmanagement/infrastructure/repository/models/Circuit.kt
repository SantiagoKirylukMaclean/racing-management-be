package com.bbqsoft.teamsmanagement.infrastructure.repository.models

import jakarta.persistence.*

@Entity
@Table(name = "circuits")
data class Circuit(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    val id: Long = 0,

    @Column(nullable = false)
    val name: String,

    @Column(nullable = false)
    val location: String,

    @Column(nullable = false)
    val length: Double

) : BaseEntity()
