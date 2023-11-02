//
//  EventViewModel.swift
//  PartyHunt
//
//  Created by Brenda Saavedra Cantu on 01/11/23.
//

import Foundation

@Observable
final class EventViewModel {
    var eventsLogic: EventsLogic
    
    init(eventsLogic: EventsLogic = .shared) {
        self.eventsLogic = eventsLogic
    }
}
