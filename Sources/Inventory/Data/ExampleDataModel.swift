//
//  ExampleDataModel.swift
//  Inventory
//
//  Created by Mohamed El-Halawani on 2025-02-03.
//

import Foundation
import Hummingbird

// This is an example data model object.
struct ExampleDataModel {
    let id: UUID
    let name: String
}


// Part data model

// enum can have 4 cases here
enum PartCategory: String, Codable, Equatable{
    case engine, transmission, brakes, body
}

struct Dimensions: Codable, Equatable{
    let height: Double
    let width: Double
    let length: Double
}

struct Part{
    let id: UUID?
    let name: String
    let category: PartCategory
    let size: Dimensions
    let weight: Double
    
    
    init(id: UUID? = nil, name: String, category: PartCategory, size: Dimensions, weight: Double) {
        self.id = id ?? UUID() // generate a new id on initailisation since id is generated server side
        self.name = name
        self.category = category
        self.size = size
        self.weight = weight
    }
    
 
}


// Warehouse data model

struct Location: Codable, Equatable{
    let address: String
    let city: String
    let country: String
}

struct Warehouse{
    let id: UUID?
    let name: String
    let location: Location
    let contact: String
    let manager: String
    
    init(id: UUID? = nil, name: String, location: Location, contact: String, manager: String){
        self.id = id ?? UUID()// generate a new id on initailisation since id is generated server side
        self.name = name
        self.location = location
        self.contact = contact
        self.manager = manager
        
    }
    
}


// Every data model you create MUST contain this line (DON'T forget to change the object name)
extension ExampleDataModel: ResponseEncodable, Decodable, Equatable {}

extension Part: ResponseEncodable, Decodable, Equatable {}

extension Warehouse: ResponseEncodable, Decodable, Equatable {}
