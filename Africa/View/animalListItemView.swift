//
//  animalListItemView.swift
//  Africa
//
//  Created by Vatana Chhorn on 08/12/2020.
//

import SwiftUI

struct animalListItemView: View {
    
    // MARK: - PROPERTIES
    
    let animal : Animal
    
    // MARK: - BODY
    
    var body: some View {
        HStack (alignment: .center, spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
            
            VStack (alignment: .leading, spacing: 6){
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }  //: VSTACK
        }  //:  HSTACK
    }
}
    // MARK: - PREVIEW
struct animalListItemView_Previews: PreviewProvider {
    static let animals : [Animal] = Bundle.main.decodable("animals.json")
    static var previews: some View {
        animalListItemView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
