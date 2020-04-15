//
//  NSManagedObjectContext+Extended.swift
//  CoffeeOrderingCD
//
//  Created by Federico Nieto on 13/04/2020.
//  Copyright © 2020 Federico Nieto. All rights reserved.
//

import Foundation
import UIKit
import CoreData

extension NSManagedObjectContext {
    
    static var current: NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
    
}
