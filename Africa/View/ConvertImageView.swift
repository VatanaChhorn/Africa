//
//  ConvertImageView.swift
//  Africa
//
//  Created by Vatana Chhorn on 26/11/2020.
//

import SwiftUI

struct ConvertImageView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach (0..<5){ item in 
                Image("cover-lion")
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
        ConvertImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
