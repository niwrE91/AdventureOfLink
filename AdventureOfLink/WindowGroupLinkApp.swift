import SwiftUI

@main
struct WindowGroupLinkApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                TabSection {
                    Tab("All", systemImage: "list.bullet") {
                        NavigationStack {
                            AllListView()
                                .navigationTitle("All")
                        }
                    }
                    
                    Tab("Search", systemImage: "magnifyingglass") {
                        NavigationStack {
                            SearchView()
                                .navigationTitle("Search")
                        }
                        
                    }
                }
            }
        }
    }
}
