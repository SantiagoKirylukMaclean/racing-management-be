package com.bbqsoft.teamsmanagement.application.utils

import com.bbqsoft.teamsmanagement.infrastructure.repository.models.RaceSessionType

enum class RacePointsByPosition(val position: Int, val racePoints: Int, val qualifyingPoints: Int) {
    FIRST(1, 30, 15),
    SECOND(2, 25, 10),
    THIRD(3, 22, 8),
    FOURTH(4, 20, 6),
    FIFTH(5, 18, 4),
    SIXTH(6, 16, 2),
    SEVENTH(7, 14, 0),
    EIGHTH(8, 12, 0),
    NINTH(9, 10, 0),
    TENTH(10, 8, 0),
    ELEVENTH(11, 6, 0),
    TWELFTH(12, 4, 0),
    THIRTEENTH(13, 3, 0),
    FOURTEENTH(14, 2, 0),
    FIFTEENTH(15, 1, 0),
    DEFAULT(0, 0, 0);

    companion object {
        fun getPointsByPositionAndSessionType(position: Int, sessionType: RaceSessionType): Int {
            val racePoint = entries.find { it.position == position } ?: DEFAULT
            return when (sessionType) {
                RaceSessionType.RACE2 -> racePoint.racePoints
                RaceSessionType.QUALIFYING -> racePoint.qualifyingPoints
                RaceSessionType.RACE1 -> racePoint.racePoints
            }
        }
    }
}