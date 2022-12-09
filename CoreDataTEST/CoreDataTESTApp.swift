//
//  CoreDataTESTApp.swift
//  CoreDataTEST
//
//  Created by Александр on 09.12.2022.
//

import SwiftUI

@main
struct CoreDataTESTApp: App {
   // let persistenceController = PersistenceController.shared

    @StateObject private var dataController = DataController()
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
