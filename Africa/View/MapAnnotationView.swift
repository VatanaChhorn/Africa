//
//  MapAnnotationView.swift
//  Africa
//
//  Created by Vatana Chhorn on 29/12/2020.
//

import SwiftUI

struct MapAnnotationView: View {
    // MARK: - PROPERTIES
    
    var location : NationalParkLocation
    @State private var animation : Double = 0.0
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            Circle()
                .fill( Color.accentColor)
                .frame(width: 56, height: 56, alignment: .center)
            
            Circle ()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 54, height: 54, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
                .clipShape(Circle())
        }  //: ZStack
        .onAppear {
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                self.animation = 1
            }
        }  //: OnAppear
    }
}

    // MARK: - PREVIEW
struct MapAnnotationView_Previews: PreviewProvider {
    static var locations : [NationalParkLocation] = Bundle.main.decodable("locations.json")
    static var previews: some View {
        MapAnnotationView(location: locations[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
