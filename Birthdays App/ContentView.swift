//
//  ContentView.swift
//  Birthdays App
//
//  Created by Shira Stein on 4/26/25.
//

import SwiftUI

struct ContentView: View {
    @State private var friends: [Friend] = [
        Friend(name: "Taylor Swift", birthday: .now),
        Friend(name: "Selena Gomez", birthday: Date(timeIntervalSince1970: 0))
    ]
    
    var body: some View {
        NavigationStack {
            List(friends, id: \.name){friend in
                HStack {
                    Text(friend.name)
                    Spacer()
                    Text(friend.birthday, format: .dateTime.month(.wide).day().year())
        }
            }
            navigationTitle("Birthdays")
        }
    }
}

#Preview {
    ContentView()
}
