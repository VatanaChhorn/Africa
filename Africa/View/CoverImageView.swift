//
//  ConvertImageView.swift
//  Africa
//
//  Created by Vatana Chhorn on 26/11/2020.
//

import SwiftUI

struct CoverImageView: View {
    // MARK: - PROPERTIES
    
    var coverImageModel: [imageViewModel] = Bundle.main.decodable("covers.json")
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach (coverImageModel){ item in
                Image(item.name)
                    .resizable()
                    .scaledToFit()
            }  //: LOOP
        } //:  TAB
        .tabViewStyle(PageTabViewStyle())
    }
}

    // MARK: - PREVIEW

struct ConvertImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
