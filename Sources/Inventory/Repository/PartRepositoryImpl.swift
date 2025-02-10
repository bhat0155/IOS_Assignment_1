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
    }
    
    
    
    func get(id: UUID) async throws -> Part? {
        <#code#>
    }
    
    func list() async throws -> [Part] {
        <#code#>
    }
    
    func delete(id: UUID) async throws -> Bool {
        <#code#>
    }
    
    func deleteAll() async throws -> Bool {
        <#code#>
    }
    
    
}
