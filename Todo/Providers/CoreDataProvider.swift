//
//  CoreDataProvider.swift
//  Todo
//
//  Created by Горніч Антон on 25.12.2025.
//

import Foundation
import CoreData

class CoreDataProvider{
    let persistentContainer: NSPersistentContainer
    
    var viewContext: NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
    static var preview: CoreDataProvider {
        let provider = CoreDataProvider(inMemory: true)
        let viewContext = provider.viewContext
        
        for index in 0..<10 {
            let todoItem = TodoItem(context: viewContext)
            todoItem.title = "TodoItem \(index)"
            todoItem.isCompleted = index % 2 == 0 ? true: false
        }
        
        do{
            try viewContext.save()
        }catch{
            print(error)
        }
        return provider
        
    }
    
    init(inMemory: Bool = false) {
        persistentContainer = NSPersistentContainer(name: "TodoModel")
        
        
        /// Initializes the Core Data provider with optional in-memory storage
        /// - Parameter inMemory: When true, data is stored in memory only (useful for testing).
        ///                       When false (default), data persists to disk.
        if inMemory {
            // Setting the URL to /dev/null prevents data from being written to disk
            persistentContainer.persistentStoreDescriptions.first?.url = URL(fileURLWithPath: "/dev/null")
        }
        
        persistentContainer.loadPersistentStores{_,error in
            if let error{
                fatalError("Core Data store failed to init \(error)")
            }
            
        }
    }
}
