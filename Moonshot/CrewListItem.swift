//
//  CrewListItem.swift
//  Moonshot
//
//  Created by Lahiru Amarasooriya on 2023-09-04.
//

import SwiftUI

struct CrewListItem: View {
    
    let crewMember: CrewMember
    
    var body: some View {
        HStack {
            Image(crewMember.astronaut.id)
                .resizable()
                .frame(width: 104, height: 72)
                .clipShape(Capsule())
                .overlay(
                    Capsule()
                        .strokeBorder(.white, lineWidth: 1)
                )

            VStack(alignment: .leading) {
                Text(crewMember.astronaut.name)
                    .foregroundColor(.white)
                    .font(.headline)
                Text(crewMember.role)
                    .foregroundColor(.secondary)
            }
        }
        .padding(.horizontal)
    }
}

struct CrewListItem_Previews: PreviewProvider {
    
    static var previews: some View {
        CrewListItem(crewMember: CrewMember(role: "role", astronaut: Astronaut(id: "white", name: "Name", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")))
            .preferredColorScheme(.dark)
    }
}
