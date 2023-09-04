//
//  ListLayout.swift
//  Moonshot
//
//  Created by Lahiru Amarasooriya on 2023-09-04.
//

import SwiftUI

struct ListLayout: View {
    let astronauts: [String: Astronaut]
    let missions: [Mission]
    
    var body: some View {
        List(missions) { mission in
            NavigationLink {
                MissionView(mission: mission, astronauts: astronauts)
            } label: {
                HStack {
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                    
                    Text(mission.displayName)
                }
            }
            .listRowBackground(Color.darkBackground)
        }
        .listStyle(.plain)
        
    }
}

struct ListLayout_Previews: PreviewProvider {
    static let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    static let missions: [Mission] = Bundle.main.decode("missions.json")
    
    static var previews: some View {
        NavigationView {
            ListLayout(astronauts: astronauts, missions: missions)
                .navigationTitle("Moonshot")
        }
        .preferredColorScheme(.dark)
    }
}
