//
//  Breed.swift
//  BasicAppJson
//
//  Created by Cristian Jose Perez Guerra on 30/03/2025.
//

import Foundation

struct BreedModel: Codable, Identifiable {
    let name: String
    let imageURL: String
    let origin, size: String
    let personality: [String]
    let lifeExpectancy: String
    let energyLevel, trainability: EnergyLevel
    let characteristics: Characteristics
    
    // Generar un ID basado en la combinación de nombre y origen
    var id: String {
        "\(name)_\(origin)".hashValue.description
    }
    
    // var id: UUID { UUID() } Cada vez que se decodifique generararia un nuevo UUID
}

struct Characteristics: Codable {
    let coat: String
    let colors: [String]
    let averageWeight: AverageWeight
}

struct AverageWeight: Codable {
    let male, female: String
}

enum EnergyLevel: String, Codable {
    case high = "High"
    case moderate = "Moderate"
    case veryHigh = "Very High"
}

typealias Breeds = [BreedModel]

