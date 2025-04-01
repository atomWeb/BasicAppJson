//
//  TestRepository.swift
//  BasicAppJson
//
//  Created by Cristian Jose Perez Guerra on 1/4/25.
//

import Foundation

struct TestRepository: RepositoryProtocol {
    var localDoc: URL {
        .documentsDirectory.appending(path: "breedsdata_test.json")
    }
    
    var url: URL {
        Bundle.main.url(forResource: "dogbreeds_test", withExtension: "json")!
    }
}
