//
//  InsetFactView.swift
//  Africa
//
//  Created by Vatana Chhorn on 10/12/2020.
//

import SwiftUI

struct InsetFactView: View {
    
    // MARK: - PROPERTIES
    
    let animal : Animal
    
    // MARK: - BODY
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }  //:  TAB VIEW
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 140, idealHeight: 160, maxHeight: 180)
        }  //: GroupBox
    }
}

    // MARK: - PREVIEw

struct InsetFactView_Previews: PreviewProvider {
    
    static let animals : [Animal] = Bundle.main.decodable("animals.json")
    
    static var previews: some View {
        InsetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
