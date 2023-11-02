//
//  TestData.swift
//  PartyHunt
//
//  Created by Brenda Saavedra Cantu on 31/10/23.
//

import Foundation

struct EventPreviewInteractor: EventInteractor {
    var bundleURL: URL {
        Bundle.main.url(forResource: "EventsDev", withExtension: "json")!
    }
    
    var docURL: URL {
        URL.documentsDirectory.appending(path: "EventsDev.json")
    }
}

extension EventViewModel {
    static let preview = EventViewModel(eventsLogic: EventsLogic(interactor: EventPreviewInteractor()))
}

extension Event {
    static let mock =
        Event(id: 1, location: "MOJIM, NORTH GOA", date:"2023-11-03", artist: "Daniel O Brian", name: "PANJIM FEST 2023", image: URL(string: "https://i.ibb.co/jzzsVrc/daniel.png")!, dressCode: .funkyPop)
    
    static private func createDate(from dateStr: String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        return dateFormatter.date(from: dateStr)!
    }
}
