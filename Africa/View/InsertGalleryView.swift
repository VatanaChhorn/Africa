//
//  InsertGalleryView.swift
//  Africa
//
//  Created by Vatana Chhorn on 09/12/2020.
//

import SwiftUI

struct InsertGalleryView: View {
    
    // MARK: - PROPERTIES
    
    let animal : Animal
    
    // MARK: - BODY
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
                HStack(alignment: .center) {
                    ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }  //: LOOP
                    .padding(.horizontal, 6)
            }  //: HSTACK
        }  //:  ScrollView
    }
}
    
    // MARK: - PREVIew
struct InsertGalleryView_Previews: PreviewProvider {
    static let animals : [Animal] = Bundle.main.decodable("animals.json")
    static var previews: some View {
        InsertGalleryView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
