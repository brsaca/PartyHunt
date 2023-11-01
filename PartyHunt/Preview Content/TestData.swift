//
//  TestData.swift
//  PartyHunt
//
//  Created by Brenda Saavedra Cantu on 31/10/23.
//

import Foundation

extension Events {
    static let mock = Events(event: [
        Event(id: "1", location: "MOJIM, NORTH GOA", date: createDate(from: "2023-11-03"), artist: "Daniel O Brian", name: "PANJIM FEST 2023", image: URL(string: "https://i.ibb.co/jzzsVrc/daniel.png")!, dressCode: .funkyPop),
        Event(id: "2", location: "ARAMBOL, NORTH COA", date: createDate(from: "2023-11-10"), artist: "Tamara Harrison", name: "AHA PARTY 2023", image: URL(string: "https://i.ibb.co/jzzsVrc/daniel.png")!, dressCode: .emo),
        Event(id: "3", location: "PANJIM, GOA", date: createDate(from: "2023-11-15"), artist: "Alanis Ford", name: "ROCK TIME 2023", image: URL(string: "https://i.ibb.co/jzzsVrc/daniel.png")!, dressCode: .hardRock),
    ])
    
    static private func createDate(from dateStr: String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        return dateFormatter.date(from: dateStr)!
    }
}
