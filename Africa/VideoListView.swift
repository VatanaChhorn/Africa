//
//  ViewListView.swift
//  Africa
//
//  Created by Vatana Chhorn on 24/11/2020.
//

import SwiftUI

struct VideoListView: View {
    
    // MARK: - PROPERTIES
    @State var videos : [Video] = Bundle.main.decodable("videos.json")
    let hapticImapct = UIImpactFeedbackGenerator(style: .medium)
    
    // MARK: - BODY
    var body: some View {
        
        NavigationView {
            List {
                ForEach(videos) { item in
                    NavigationLink(destination: VideoPlayerView(videoSelected: item.id, videoTitle: item.name)) {
                        VideoListItemsView(video: item)
                            .padding(.vertical, 8)
                    }
                }
            }  //: End Of List
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button (action: {
                        // Shuffle Button
                        videos.shuffle()
                        hapticImapct.impactOccurred()
                    }) {
                        Image(systemName: "arrow.2.squarepath")
                    } 
                }
            }
        }  //: End Of Navigation
    }
}

// MARK: - PREVIEW
struct ViewListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
