//
//  CharacterViewModel.swift
//  Assignment3
//
//  Created by Tyler Remy on 3/30/24.
//

import Foundation

class CharacterViewModel : ObservableObject {
    
    @Published private(set) var characterData = [CharacterModel]()
    @Published var hasError = false
    @Published var error : CharacterModelError?
    private let url = "https://rickandmortyapi.com/api/character"
    
    @MainActor
    func fecthData() async {
        if let url = URL(string: url) {
            do {
                let (data, _) = try await URLSession.shared.data(from: url)
                guard let results = try JSONDecoder().decode(CharacterResults?.self, from: data) else {
                    self.hasError.toggle()
                    self.error = CharacterModelError.decodeError
                    return
                }
                self.characterData = results.results
            } catch {
                self.hasError.toggle()
                self.error = CharacterModelError.customError(error: error)
            }
        }
    }
    
}
    
extension CharacterViewModel {
    enum CharacterModelError : LocalizedError {
        case decodeError
        case customError(error: Error)
        
        var errorDescription: String? {
            switch self {
            case .decodeError:
                return "Decoding Error"
            case .customError(let error):
                return error.localizedDescription
            }
        }
    }
}
