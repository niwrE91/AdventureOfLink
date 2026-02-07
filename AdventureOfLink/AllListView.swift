import EWNetworking
import SwiftUI

struct AllListView: View {
    private let ewNetworking: EWNetworking = EWNetworking()
    @State private var characterArray: [Charakter]
    private var page: Int = 1

    var body: some View {
        List {
            Text("Hello World!")
        }
        .listStyle(.plain)
        .task {
//            characters = try ewNetworking.request(<#T##endpoint: EndpointType##EndpointType#>)
        }
    }
}

#Preview {
    NavigationStack { AllListView() }
}
