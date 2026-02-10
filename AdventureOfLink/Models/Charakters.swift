import Foundation
import MetaCodable

// MARK: - Characters
@Codable
struct Charakters: Identifiable, Hashable, Sendable {
    let id: UUID = UUID()
    
    static func == (lhs: Charakters, rhs: Charakters) -> Bool {
        lhs.id == rhs.id
    }
    
    let success: Bool
    let count: Int
    let data: [Charakter]
}

// MARK: - Charakter
@Codable
struct Charakter: Identifiable, Hashable, Sendable {
    let appearances: [String]
    let name, description: String
    let gender, race: String?
    let id: String
}
