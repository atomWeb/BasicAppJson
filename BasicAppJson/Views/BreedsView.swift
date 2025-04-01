//
//  ContentView.swift
//  BasicAppJson
//
//  Created by Cristian Jose Perez Guerra on 30/03/2025.
//

import SwiftUI

struct BreedsView: View {
    
    //    @State private var vm: BreedVM
    @State var vm = BreedVM()
    
    var body: some View {
        List {
            ForEach(vm.breeds) { breed in
                Text(breed.name)
            }
            .font(.title3)
        }
    }
}

#Preview {
    BreedsView(vm: BreedVM.preview)
}
