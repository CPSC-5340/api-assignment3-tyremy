//
//  CharacterImageView.swift
//  Assignment3
//
//  Created by Tyler Remy on 3/30/24.
//

import SwiftUI

struct CharacterImageView: View {
    
    var url : String
    
    var body: some View {
        AsyncImage(url: URL(string: url)) { image in
            image.resizable()
                .scaledToFit()
                .border(Color.black, width: 4)
        } placeholder: {
            ProgressView()
        }
        .frame(width: 250, height: 250)
    }
}

#Preview {
    CharacterImageView(url: "https://rickandmortyapi.com/api/character/avatar/1.jpeg")
}
