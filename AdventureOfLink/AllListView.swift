import EWNetworking
import EWUI
import SwiftUI

struct AllListView: View {
    private let ewNetworking: EWNetworking = EWNetworking()
    @State private var charakterArray: [Charakter] = []
    private var page: Int = 1

    var body: some View {
        List {
            ForEach(charakterArray, id: \.self) { charakter in
                NavigationLink {
                    CharacterDetailView(charakter: charakter)
                } label: {
                    ZeldaOverviewCell(name: charakter.name, race: charakter.race, gender: charakter.gender)
                }

            }
        }
        .listStyle(.plain)
        .task {
            await fetchData()
        }
    }
    
    private func fetchData() async {
            do {
                charakterArray = try await ewNetworking.request(GetAllCharakters(page: page)).data
            } catch {
                print("ERROR: \(error.localizedDescription)")
            }
        }
}

#Preview {
    NavigationStack { AllListView() }
}
