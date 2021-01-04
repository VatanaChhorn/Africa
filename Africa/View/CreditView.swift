//
//  Credits.swift
//  Africa
//
//  Created by Vatana Chhorn on 04/01/2021.
//

import SwiftUI

struct CreditView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            
            Text("""
Copyright © Vatana Chhorn
All right reserved
Better Apps ❤️ Less Code
""")
                .font(.footnote)
                .multilineTextAlignment(.center)
        }  //: VStack
    }
}

// MARK: - PREVIEW
struct Credits_Previews: PreviewProvider {
    static var previews: some View {
        CreditView()
            .previewLayout(.sizeThatFits)
    }
}
