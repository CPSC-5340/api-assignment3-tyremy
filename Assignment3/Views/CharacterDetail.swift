//
//  CharacterDetail.swift
//  Assignment3
//
//  Created by Tyler Remy on 3/30/24.
//

import SwiftUI

struct CharacterDetail: View {
    
    var character : CharacterModel
    
    var body: some View {
        Color(hex: 0x97CE4C)
                .ignoresSafeArea()
                .overlay(
                    ScrollView (.vertical) {
                        VStack(alignment: .center) {
                            CharacterImageView(url: character.image)
                            Text(character.name)
                                .font(.system(size: 28))
                                .bold()
                                .padding()
                            CharacterStatusView(character: character)
                        }
                        .padding()
                    }
                        .frame(minWidth: 0, maxWidth: .infinity)
                )
    }
}


extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}
