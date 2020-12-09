//
//  ContentView.swift
//  Africa
//
//  Created by Vatana Chhorn on 24/11/2020.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    
    let animals : [Animal] = Bundle.main.decodable("animals.json")
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 250)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    .padding(.vertical, 30)
                
                ForEach(animals) {
                    animal in
                    NavigationLink (
                        destination: AnimalDetailView(animals: animal) ) {
                            animalListItemView(animal: animal)
                        }
                }  //:  Nav Link
            }  //:  End List
            .navigationBarTitle("AFRICA", displayMode : .large)

        }  //: End Navigation
    }
}
    
    // MARK: - REVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
