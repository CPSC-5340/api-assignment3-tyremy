//
//  CharacterStatusView.swift
//  Assignment3
//
//  Created by Tyler Remy on 3/30/24.
//

import SwiftUI


struct CharacterStatusView: View {
    
    var character : CharacterModel
    
    var body: some View {
        VStack{
            HStack {
                Text("Species:").bold()
                    .font(.system(size: 22))
                Text(character.species).font(.system(size: 18))
            }
            .padding()
            .overlay {
                RoundedRectangle(cornerRadius: 0)
                    .stroke(.black, lineWidth: 3)
                    .frame(maxWidth: .infinity)
            }
            HStack {
                Text("Gender:").bold()
                    .font(.system(size: 22))
                Text(character.gender).font(.system(size: 18))
            }
            .padding()
            .overlay {
                RoundedRectangle(cornerRadius: 0)
                    .stroke(.black, lineWidth: 3)
                    .frame(maxWidth: .infinity)
            }
            HStack {
                Text("Location:").bold()
                    .font(.system(size: 22))
                Text(character.location.name).font(.system(size: 18))
            }
            .padding()
            .overlay {
                RoundedRectangle(cornerRadius: 0)
                    .stroke(.black, lineWidth: 3)
                    .frame(maxWidth: .infinity)
            }
            HStack {
                Text("Status:").bold()
                    .font(.system(size: 22))
                Text(character.status).font(.system(size: 18))
            }
            .padding()
            .overlay {
                RoundedRectangle(cornerRadius: 0)
                    .stroke(.black, lineWidth: 3)
                    .frame(maxWidth: .infinity)
            }
        }
    }
}
