//
//  Repository.swift
//  BasicAppJson
//
//  Created by Cristian Jose Perez Guerra on 31/03/2025.
//

import Foundation

struct Repository: RepositoryProtocol {
    var url: URL {
        Bundle.main.url(forResource: "dogbreedsenglish", withExtension: "json")!
    }

    var localDoc: URL {
        .documentsDirectory.appending(path: "breedsdata.json")
    }
}
