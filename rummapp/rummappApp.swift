//
//  rummappApp.swift
//  rummapp
//
//  Created by Jacob Gonzalez on 19/12/21.
//

import SwiftUI

@main
struct rummappApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
