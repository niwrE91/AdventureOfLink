import EWNetworking
import EWUI
import SwiftUI

public struct AllListView: View {
    private let ewNetworking: EWNetworking = EWNetworking()
    @State private var charakterArray: [Charakter] = []
    @State private var page: Int = 1
    
    public var body: some View {
        List {
            ForEach(charakterArray, id: \.self) { charakter in
                NavigationLink {
                    CharacterDetailView(charakter: charakter)
                } label: {
                    ZeldaOverviewCell(name: charakter.name, race: charakter.race, gender: charakter.gender)
                }.onAppear {
                    if charakter.id == self.charakterArray.last?.id {
                        page += 1
                        print("Fetching page \(self.page)")
                        Task { await fetchData() }
                    }
                }
            }
        }
        .listStyle(.sidebar)
        .task {
            await fetchData()
        }
    }
    
    private func fetchData() async {
        do {
            let newPage = try await ewNetworking.request(GetAllCharakters(page: page)).data
            charakterArray.append(contentsOf: newPage)
        } catch {
            print("ERROR: \(error.localizedDescription)")
        }
    }
}

#Preview {
    NavigationStack { AllListView() }
}
