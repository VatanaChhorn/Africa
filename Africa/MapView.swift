//
//  MapView.swift
//  Africa
//
//  Created by Vatana Chhorn on 24/11/2020.
//

import SwiftUI
import MapKit

struct MapView: View {
    // MARK: - PROPERTIES
    
    @State private var region : MKCoordinateRegion = {
        let mapCoordinate = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        let mapZoomLabel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        let mapRegion = MKCoordinateRegion(center: mapCoordinate, span: mapZoomLabel)
        return mapRegion
    } ()
    
    let locations : [NationalParkLocation] = Bundle.main.decodable("locations.json")
    
    // MARK: - BODY
    var body: some View {
        //        Map(coordinateRegion: $region)
        Map(coordinateRegion: $region, annotationItems: locations) { item in
            
            //            MapMarker (coordinate: item.location, tint: .accentColor)
            
            
            /* Custom Basic Annotatipm*/
            //            MapAnnotation (coordinate: item.location) {
            //                Image("logo")
            //                    .resizable()
            //                    .scaledToFit()
            //                    .frame(width: 32, height: 32, alignment: .center)
            
            /* Complex Map Annotatipm*/
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            }
        }  //: ANNOTATION
        .overlay(
            
            HStack {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48, alignment: .center)
                
                VStack {
                    HStack {
                        Text("Latitude:")
                            .font(.footnote)
                            .bold()
                            .foregroundColor(.accentColor)
                        
                        Spacer()
                        
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .bold()
                            .foregroundColor(.white)
                    }  //: HStack
                    
                    Divider()
                    
                    HStack {
                        Text("Longitude:")
                            .font(.footnote)
                            .bold()
                            .foregroundColor(.accentColor)
                        
                        Spacer()
                        
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .bold()
                            .foregroundColor(.white)
                    }  //: HStack
                    
                    
                }  //: VStack
                
            }  //: HStack
            .padding (.horizontal, 16)
            .padding (.vertical, 12)
            .background(
                Color.black
                    .cornerRadius(8)
                    .opacity(0.6)
            ) .padding()
            , alignment: .top
            
        )  //:  OVERLAY
        
    }
}


// MARK: - PREVIEW
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
