//
//  RepositoryProtocol.swift
//  BasicAppJson
//
//  Created by Cristian Jose Perez Guerra on 31/03/2025.
//

import Foundation

protocol RepositoryProtocol {
    var url: URL { get }
    var localDoc: URL { get }
}

extension RepositoryProtocol {
    func getJSON<T>() throws -> T where T: Decodable {
        var fileURL = url
        if FileManager.default.fileExists(atPath: localDoc.path()) {
            fileURL = localDoc
        }
        let data = try Data(contentsOf: fileURL)
        return try JSONDecoder().decode(T.self, from: data)
    }
    
    func saveJSON<T>(_ object: T) throws where T: Encodable {
        let data = try JSONEncoder().encode(object)
        try data.write(to: localDoc, options: [.atomic, .completeFileProtection])
    }
}
