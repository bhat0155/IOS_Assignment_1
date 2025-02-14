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
        let warehouses = await db.list()
        if (warehouses.isEmpty){
            print("database is empty")
        }
        return warehouses
    }
    
    func update(id: UUID, name: String, location: Location, contact: String, manager: String?) async throws -> Warehouse? {
        guard let existingWarehouse = await db.get(id: id) else{
            print("warehouse with id \(id) not found in database")
            return nil
        }
        let warehouse = Warehouse(id: UUID(), name: name, location: location, contact: contact, manager: manager ?? "Ekam" )
        await db.update(warehouse: warehouse)
        return warehouse
        
    }
    
    func delete(id: UUID) async throws -> Bool {
        let deletedWarehouse = await db.delete(id: id)
        return deletedWarehouse
    }
    
    func deleteAll() async throws -> Bool {
        let deleteAll =  await db.deleteAll()
        if(deleteAll){
            print("deleted all warehouses")
        }else{
            print("Failed to delete all warehouses")

        }
        return deleteAll
    }
    
    
}
