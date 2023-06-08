//
//  Characters.swift
//  AdventureOfLink
//
//  Created by Erwin Warkentin on 07.06.23.
//
//  To parse the JSON, add this file to your project and do:
//  let characters = try? JSONDecoder().decode(Characters.self, from: jsonData)

import Foundation

// MARK: - Characters
struct Characters: Codable {
    let success: Bool?
    let count: Int?
    let data: [Data]?
}

// MARK: - Data
struct Data: Codable {
    let appearances: [String]?
    let name, description: String?
    let gender, race: String?
    let id: String?
}
