//
//  CoreDataService.swift
//  Makeup_Product_Application
//
//  Created by user202376 on 12/8/21.
//

import Foundation
import CoreData

class CoreDataService{
    
    static var shared : CoreDataService = CoreDataService();
    
    func insertNewFeedback(overall: String, detail: String){
        let newTask = Feedback(context: persistentContainer.viewContext)
        newTask.overall = overall
        newTask.detail = detail
        saveContext()
    }
    
    func getAllfeedback() -> [Feedback]{
        
        var result = [Feedback]()
        let fetch: NSFetchRequest  = Feedback.fetchRequest()	
        
        do{
            result = try persistentContainer.viewContext.fetch(fetch)
        }catch{}
        
        return result
    }
    
    func deleteoneFeedback(todelete : Feedback) {
        persistentContainer.viewContext.delete(todelete)
        saveContext()
    }
    
    lazy var persistentContainer: NSPersistentContainer = {
    
        let container = NSPersistentContainer(name: "Makeup_Product_Application")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    // MARK: - Core Data Saving support

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {

                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }}
