//
//  WarehouseRepositoryImpl.swift
//  Inventory
//
//  Created by Ekam Bhatia on 2025-02-10.
//

import Foundation

struct WarehouseRepositoryImpl: WarehouseRepository{
    let db: ACMEInventoryDatabaseWarehouse
    func create(name: String, location: Location, contact: String, manager: String?) async throws -> Warehouse? {
        let warehouse = Warehouse(id: UUID(), name: name, location: location, contact: contact, manager: manager ?? "Ekam" )
        await db.create(warehouse: warehouse)
        return warehouse
    }
    
    func get(id: UUID) async throws -> Warehouse? {
        guard let warehouse = await db.get(id: id) else{
            print("warehouse with id \(id) does not exist");
            return nil
        }
        return warehouse
    }
    
    func list() async throws -> [Warehouse] {
        <#code#>
    }
    
    func update(id: UUID, name: String, location: Location, contact: String, manager: String?) async throws -> Warehouse? {
        <#code#>
    }
    
    func delete(id: UUID) async throws -> Bool {
        <#code#>
    }
    
    func deleteAll() async throws -> Bool {
        <#code#>
    }
    
    
}
