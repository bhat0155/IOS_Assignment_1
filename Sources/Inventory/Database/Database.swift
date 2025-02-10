//
//  Database.swift
//  Inventory
//
//  Created by Ekam Bhatia on 2025-02-10.
//

import Foundation

 actor ACMEInventoryDatabase{
    var parts: [UUID: Part] = [:];
    
    // creating a part
    func create(part: Part){
         parts[part.id] = part
    }
    
     func update(part: Part){
         parts[part.id] = part
     }
    
}
