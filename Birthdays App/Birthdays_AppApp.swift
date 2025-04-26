//
//  Birthdays_AppApp.swift
//  Birthdays App
//
//  Created by Shira Stein on 4/26/25.
//

import SwiftUI
import SwiftData

@main
struct Birthdays_AppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer (for: Friend.self)
        }
    }
}
