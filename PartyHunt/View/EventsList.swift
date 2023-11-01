//
//  EventsList.swift
//  PartyHunt
//
//  Created by Brenda Saavedra Cantu on 31/10/23.
//

import SwiftUI

struct EventsList: View {
    var body: some View {
        ScrollView {
            LazyVStack(pinnedViews: [.sectionHeaders]) {
                Section {
                    ForEach(Events.mock.event) { event in
                        EventCell(event: event, status: .booked)
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
    EventsList()
        .background(.black)
}
