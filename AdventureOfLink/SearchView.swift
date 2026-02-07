import SwiftUI

struct SearchView: View {
    @State private var query: String = ""

    private let allNames: [String] = [
        "Luke Skywalker", "Leia Organa", "Han Solo", "Darth Vader", "Obi-Wan Kenobi",
        "Yoda", "Chewbacca", "Padmé Amidala", "Anakin Skywalker", "Rey",
        "Finn", "Poe Dameron", "Mace Windu", "Qui-Gon Jinn", "Lando Calrissian"
    ]

    var filtered: [String] {
        let q = query.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !q.isEmpty else { return allNames }
        return allNames.filter { $0.localizedCaseInsensitiveContains(q) }
    }

    var body: some View {
        List(filtered, id: \.self) { name in
            Text(name)
        }
        .searchable(text: $query, placement: .navigationBarDrawer(displayMode: .automatic), prompt: "Search by name")
        .animation(.default, value: filtered)
    }
}

#Preview {
    NavigationStack { SearchView() }
}
