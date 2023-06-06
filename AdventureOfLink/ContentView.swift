//
//  ContentView.swift
//  AdventureOfLink
//
//  Created by Erwin Warkentin on 06.06.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "link")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Welcome to, Adventure of link.")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
