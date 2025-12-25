//
//  TodoApp.swift
//  Todo
//
//  Created by Горніч Антон on 25.12.2025.
//

import SwiftUI

@main
struct TodoApp: App {
    let provider = CoreDataProvider()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, provider.viewContext )
        }
    }
}
