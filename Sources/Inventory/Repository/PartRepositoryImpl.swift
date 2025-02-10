//
//  PartRepositoryImpl.swift
//  Inventory
//
//  Created by Ekam Bhatia on 2025-02-10.
//

import Foundation

struct PartRepositoryImpl: PartRepository{
    let db: ACMEInventoryDatabase
    
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
