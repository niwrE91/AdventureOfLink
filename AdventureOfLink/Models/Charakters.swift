import Foundation
import MetaCodable

// MARK: - Characters
@Codable
struct Charakters: Identifiable, Hashable, Sendable {
    var id: UUID = UUID()
    
    static func == (lhs: Charakters, rhs: Charakters) -> Bool {
        lhs.id == rhs.id
        && lhs.success == rhs.success
        && lhs.count == rhs.count
        && lhs.data == rhs.data
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
