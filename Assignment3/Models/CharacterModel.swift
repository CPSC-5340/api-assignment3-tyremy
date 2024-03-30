//
//  CharacterModel.swift
//  Assignment3
//
//  Created by Tyler Remy on 3/30/24.
//

import Foundation

struct CharacterResults : Codable {
    
    let results : [CharacterModel]
    
}

struct CharacterModel : Codable, Identifiable {
    let id: Int
    let name: String
    let species: String
    let gender: String
    let status: String
    let image: String
    let location: LocationModel
}


struct LocationModel : Codable {
    let name: String
}



