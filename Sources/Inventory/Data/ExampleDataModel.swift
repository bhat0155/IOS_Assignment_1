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
    let id: UUID
    let name: String
    let category: PartCategory
    let size: Dimensions
    let weight: Double
    
}

// Warehouse data model

struct Location: Codable, Equatable{
    let address: String
    let city: String
    let country: String
}

struct Warehouse{
    let id: UUID
    let name: String
    let location: Location
    let contactNumber: String
    let manager: String
    
}


// Every data model you create MUST contain this line (DON'T forget to change the object name)
extension ExampleDataModel: ResponseEncodable, Decodable, Equatable {}

extension Part: ResponseEncodable, Decodable, Equatable {}

extension Warehouse: ResponseEncodable, Decodable, Equatable {}
