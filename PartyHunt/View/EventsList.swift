//
//  EventsList.swift
//  PartyHunt
//
//  Created by Brenda Saavedra Cantu on 31/10/23.
//

import SwiftUI

struct EventsList: View {
    // MARK: View Properties
    let events: [Event]
    
    var body: some View {
        ScrollView {
            LazyVStack(pinnedViews: [.sectionHeaders]) {
                Section {
                    ForEach(events) { event in
                        NavigationLink(destination: {
                            DetailView(event: event)
                                .navigationBarBackButtonHidden(true)
                        }, label: {
                            EventCell(event: event, status: .booked)
                                .padding(.horizontal, 20)
                        })
                    }
                } header: {
                    HStack(alignment: .top) {
                        Text("EVENTS NEARBY")
                            .font(.outfit(.bold, size: 14))
                            .foregroundStyle(.white)
                            .padding(.leading, 24)
                        Spacer()
                    }
                    .frame(width: .infinity, height: 40)
                }
                .id("SECCION1")
            }
        }
    }
    
}

#Preview {
    EventsList(events: EventViewModel.preview.eventsLogic.events)
        .background(.customYellow)
}
