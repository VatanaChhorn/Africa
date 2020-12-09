//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Vatana Chhorn on 09/12/2020.
//

import SwiftUI

struct AnimalDetailView: View {
    
    // MARK: - PROPERTIES
    
    let animals : Animal
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack (alignment: .center, spacing: 20){
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                
                // HERO IMAGE
                
                Image(animals.image)
                    .resizable()
                    .scaledToFit()
                
                // TITLE
                
                Text(animals.name)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                // HEADLINE
                
                Text(animals.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                // GALLERY
                
                Group {
                    Headline(picture: "photo.on.rectangle.angled", headlineText: "Wildness in pictures")
                    InsertGalleryView(animal: animals)
                }
                .padding(.horizontal)
                
                
                
                // FACTS
                
                // DESCRIPTION
                
                // MAP
                
                // LINK
                
            }  //: Vstack
            .navigationBarTitle("Learn More About \(animals.name)", displayMode: .inline)
        }  //: ScrollView
    }
}

// MARK: - PREVIEW
struct AnimalDetailView_Previews: PreviewProvider {
    static let animals : [Animal] = Bundle.main.decodable("animals.json")
    static var previews: some View {
        NavigationView {
        AnimalDetailView(animals: animals[1])
    }
    }
}
