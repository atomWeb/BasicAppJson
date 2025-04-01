//
//  PreviewData.swift
//  BasicAppJson
//
//  Created by Cristian Jose Perez Guerra on 1/4/25.
//

import SwiftUI

@MainActor
extension BreedVM {
    static let preview = BreedVM(repository: TestRepository())
}
