//
//  Event.swift
//  PartyHunt
//
//  Created by Brenda Saavedra Cantu on 31/10/23.
//

import Foundation

struct Event: Codable, Identifiable, Hashable {
    let id: Int
    let location: String
    let date: String
    let artist: String
    let name: String
    let image: URL
    let barcode: URL
    let dressCode: DressCode
}

extension Event {
    var onlyDate: String {
        let dt = date.toDate()
        return dt?.toString() ?? ""
    }
    
    var onlyTime: String {
        let dt = date.toDate()
        return dt?.timeIn24HourFormat() ?? "20:00"
    }
    
    var details: [DetailsKeys:String] {
        return [.location: location, .name : name, .date: onlyDate, .time: onlyTime, .dresscode : dressCode.rawValue]
    }
}
enum DressCode: String, Codable {
    case emo = "EMO"
    case funkyPop = "FUNKY POP"
    case hardRock = "HARD ROCK"
}
