//
//  InsertMapView.swift
//  Africa
//
//  Created by Vatana Chhorn on 25/12/2020.
//

import SwiftUI
import MapKit

struct InsertMapView: View {
    // MARK: - PROPERTIES
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    
    // MARK: - BODY
    var body: some View {
        
        Map(coordinateRegion: $region)
            .overlay(
                NavigationLink(
                    destination: MapView()) {
                    HStack {
                        
                        Image(systemName: "mappin.circle")
                            .foregroundColor(.white)
                            .imageScale(.large)
                        
                        Text("Location")
                            .foregroundColor(.accentColor)
                            .fontWeight(.bold)
                        
                    }  //: End of Hstack
                    .padding(.vertical, 10)
                    .padding(.horizontal, 14)
                    .background(
                        Color.black
                            .opacity(0.4)
                            .cornerRadius(8)
                    )
                }  //: End Of NavigationLink
                .padding(12)
                ,alignment: .topTrailing
            )
            .frame(height: 256)
            .cornerRadius(12)
        
    }
}

// MARK: - PREVIEW
struct InsertMapView_Previews: PreviewProvider {
    static var previews: some View {
        InsertMapView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
