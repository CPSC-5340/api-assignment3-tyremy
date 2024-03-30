//
// ContentView.swift : Assignment3
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.


import SwiftUI

struct Characters: View {
    
    @ObservedObject var charsvm  = CharacterViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(charsvm.characterData) { character in
                    NavigationLink {
                        CharacterDetail(character: character)
                    } label: {
                        Text(character.name)
                    }
                }
            }
            .task {
                await charsvm.fecthData()
            }
            .listStyle(.grouped)
            .navigationTitle("Characters")
            .alert(isPresented: $charsvm.hasError, error: charsvm.error) {
                Text("")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Characters()
    }
}
