//
//  warehouseDatabase.swift
//  Inventory
//
//  Created by Ekam Bhatia on 2025-02-10.
//


import Foundation

actor ACMEInventoryDatabaseWarehouse{
    
    // creating an empty warehouse dictionary
    var warehouses: [UUID: Warehouse] = [:]
    
    // creating a warehouse
    func create(warehouse: Warehouse){
        warehouses[warehouse.id] = warehouse
    }
    
    // getting a warehouse
    
    func get(id: UUID)->Warehouse?{
        return warehouses[id]
    }
    
}
