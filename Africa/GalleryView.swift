//
//  GalleryView.swift
//  Africa
//
//  Created by Vatana Chhorn on 24/11/2020.
//

import SwiftUI

struct GalleryView: View {
    var body: some View {
        ScrollView (.vertical, showsIndicators: false) {
            Text("Gallery")
        }  //: SCROLLVIEW
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(  MotionAnimationView() )
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
