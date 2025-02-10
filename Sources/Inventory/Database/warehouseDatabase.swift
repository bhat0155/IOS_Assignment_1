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
        if let id = warehouse.id { // unwrapping
            warehouses[id] = warehouse
        }else{
            print("Error: warehouse does not have valid id")
        }
    }
    
    // getting a warehouse
    
    func get(id: UUID)->Warehouse?{
        return warehouses[id]
    }
    
    // getting all warehouses
    
    func list()->[Warehouse]{
        return Array(warehouses.values)
    }
    
    // updating warehouse by id
    func update(warehouse: Warehouse){
        if let id = warehouse.id { // unwrapping
            warehouses[id]=warehouse
        }else{
            print("Error: warehouse does not have valid id")
        }
    }
    
    // delete by id
    func delete(id: UUID)->Bool{
        if let deletedWarehouse = warehouses.removeValue(forKey: id){
            return true
        }else{
            return false
        }
    }
    
    // deleteAll
    func deleteAll()->Bool{
        warehouses.removeAll();
        return warehouses.isEmpty
    }
        
}
