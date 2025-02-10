//
//  PartRepositoryImpl.swift
//  Inventory
//
//  Created by Ekam Bhatia on 2025-02-10.
//

import Foundation

struct PartRepositoryImpl: PartRepository{
    let db: ACMEInventoryDatabase

    func create(name: String, category: PartCategory, size: Dimensions?, weight: Double?) async throws -> Part? {
        let part = Part(id: UUID(), name: name, category: category, size: size ?? Dimensions(height: 1, width: 1, length: 1), weight: weight ?? 1)
        await db.create(part: part)
        return part
    }
    
    func update(id: UUID, name: String, category: PartCategory, size: Dimensions?, weight: Double?) async throws -> Part? {
        <#code#>
        let part = Part(id: UUID(), name: name, category: category, size: size ?? Dimensions(height: 1, width: 1, length: 1), weight: weight ?? 1)
        await db.update(part:part);
        return part
    }
    
    
    func get(id: UUID) async throws -> Part? {
        guard let part = await db.get(id: id) else{
            print("id: \(id) does not exist")
            return nil
        }
         return part
    }
    
    func list() async throws -> [Part] {
       let parts = await db.list()
        if(parts.isEmpty){
            print("the database is empty")
        }
        return parts
    }
    
    
    func delete(id: UUID) async throws -> Bool {
        let partDeleted = await db.delete(id: id)
        return partDeleted
        
    }
    
    func deleteAll() async throws -> Bool {
        <#code#>
    }
    
    
}
