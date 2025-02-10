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
        if let id = part.id { // unwrapping
            parts[id] = part
        }else{
            print("Error: part does not have valid id")
        }
    }
    
     // update a part
     func update(part: Part){
         if let id = part.id { // unwrapping
             parts[id]=part
         }else{
             print("Error: part does not have valid id")
         }
     }
     
     //get a part
     func get(id: UUID)->Part?{
         return parts[id] // return nill if the part does not exist in dictionary
     }
     
     // list all items in the database
     func list()->[Part]{
         return Array(parts.values); // return values in db in the form of array
     }
     
     // delete a part by id
     func delete(id: UUID)->Bool{
         if let deleted = parts.removeValue(forKey: id){
             return true
         }else{
             return false
         }
     }
     
     // empty the parts dictionary
     func deleteAll()->Bool{
         parts.removeAll()
         return parts.isEmpty
     }
     

}
