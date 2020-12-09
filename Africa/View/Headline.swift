//
//  Headline.swift
//  Africa
//
//  Created by Vatana Chhorn on 09/12/2020.
//

import SwiftUI

struct Headline: View {
    // MARK: - PROPERTIES
    
    let picture: String
    let headlineText: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Image(systemName: picture)
                .foregroundColor(.accentColor)
                .imageScale(.large)
    
            Text(headlineText)
                .font(.title3)
                .fontWeight(.bold)
        }  //: End Of HSTACk
        .padding(.vertical)
    }
}

// MARK: - PREVIEw
struct Headline_Previews: PreviewProvider {
    static var previews: some View {
        Headline(picture: "photo.on.rectangle.angled", headlineText: "Wilderness in Pictures")
            .previewLayout(.sizeThatFits)
    }
}
