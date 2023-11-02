//
//  EventInteractor.swift
//  PartyHunt
//
//  Created by Brenda Saavedra Cantu on 01/11/23.
//

import Foundation

protocol EventInteractor {
    var bundleURL: URL { get }
    var docURL: URL { get }
    
    func loadEvents() throws -> [Event]
}

extension EventInteractor {
    func loadEvents() throws -> [Event] {
        var url = docURL
        if !FileManager.default.fileExists(atPath: url.path()) {
            url = bundleURL
        }
        
        let data = try Data(contentsOf: url)
        return try JSONDecoder().decode(Events.self, from: data).event
    }
}

struct EventProdInteractor: EventInteractor {
    var bundleURL: URL {
        Bundle.main.url(forResource: "EventsFull", withExtension: "json")!
    }
    
    var docURL: URL {
        URL.documentsDirectory.appending(path: "EventsFull.json")
    }
}
