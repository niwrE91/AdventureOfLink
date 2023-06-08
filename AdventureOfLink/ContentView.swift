//
//  ContentView.swift
//  AdventureOfLink
//
//  Created by Erwin Warkentin on 06.06.23.
//

import SwiftUI
import EasyNetwork

struct ContentView: View {
    
    var networkManager = EasyNetwork()
    
    var body: some View {
        VStack {
            Image(systemName: "link")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Welcome to, Adventure of link.")
            
            Button("Get Characters") {
                Task {
                    await networking()
                }
            }
        }
        .padding()
    }
    
    func networking() async {
        let getAllCharactersEndpoint = GetAllCharacters()
        do {
            let charactersArray = try await networkManager.send(getAllCharactersEndpoint)
            for character in charactersArray.data! {
                print(character.name ?? "xxxxx")
            }
        } catch {
            print(error)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
