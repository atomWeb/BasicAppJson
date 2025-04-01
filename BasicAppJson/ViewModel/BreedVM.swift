//
//  BreedVM.swift
//  BasicAppJson
//
//  Created by Cristian Jose Perez Guerra on 31/03/2025.
//

import Foundation

@Observable
final class BreedVM {
    let repository: RepositoryProtocol
    
    var breeds: Breeds = [] {
        didSet {
            try? repository.saveJSON(breeds)
        }
    }
    
    init(repository: RepositoryProtocol = Repository()) {
        self.repository = repository
        fetchBreeds()
    }
    
    func fetchBreeds() {
        do {
            self.breeds = try repository.getJSON()
        } catch {
            print(error)
        }
    }
}
