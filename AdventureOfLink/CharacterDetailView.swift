import SwiftUI

public struct CharacterDetailView: View {
    
    let charakter: Charakter
    
    public var body: some View {
        VStack(alignment: .leading ,spacing: 8) {
            HStack {
                Text("Gender: ")
                Text(charakter.gender ?? "Unknown")
            }
            HStack {
                Text("Species: ")
                Text(charakter.race ?? "Unknown")
            }
            HStack(alignment: .top) {
                Text("Description: ")
                Text(charakter.description)
            }
            Spacer()
        }
        .padding()
        .navigationTitle(charakter.name)
    }
}
