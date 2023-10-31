//
//  Event.swift
//  PartyHunt
//
//  Created by Brenda Saavedra Cantu on 31/10/23.
//

import Foundation

struct Events: Codable {
    let event: [Event]
}

struct Event: Codable, Identifiable {
    let id: String
    let location: String
    let date: Date
    let artist: String
    let name: String
    let image: URL
    let dressCode: DressCode
}

extension Event {
    var onlyDate: String {
        return date.toString()
    }
    
    var onlyTime: String {
        return date.timeIn24HourFormat()
    }
}

enum DressCode: String, Codable {
    case funkyPop = "FUNKY POP"
    case emo = "EMO"
    case hardRock = "HARD ROCK"
}
