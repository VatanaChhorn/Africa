//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by Vatana Chhorn on 02/01/2021.
//

import SwiftUI

struct AnimalGridItemView: View {
    // MARK: - PROPERTIES
    
    let animal : Animal
    
    // MARK: - BODY
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
            
    }
}

// MARK: - PREVIEW
struct AnimalGridItemView_Previews: PreviewProvider {
    static var animals : [Animal] = Bundle.main.decodable("animal.json")
    static var previews: some View {
        AnimalGridItemView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
