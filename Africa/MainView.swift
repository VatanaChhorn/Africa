//
//  MainView.swift
//  Africa
//
//  Created by Vatana Chhorn on 24/11/2020.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Browes")
                }
            
            VideoListView()
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Videos")
                }
            
            MapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("Location")
                }
            
            GalleryView()
                .tabItem {
                    Image(systemName: "photo")
                    Text("Gallery")
                }
        }  //: TabView
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
