//
//  Database.swift
//  Inventory
//
//  Created by Ekam Bhatia on 2025-02-10.
//

import Foundation

final class ACMEInventoryDatabase{
    var parts: [UUID: Part] = [:];
    
    // creating a part
    func create(part: Part){
        return parts[part.id] = part
    }
    
    
}
