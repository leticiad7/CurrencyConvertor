//
//  CurrencyConvertorApp.swift
//  CurrencyConvertor
//
//  Created by Leticia Amorim Domingos on 05/12/2024.
//

import SwiftUI
import SwiftData

@main
struct CurrencyConvertorApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
