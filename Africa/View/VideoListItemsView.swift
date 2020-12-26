//
//  VideoListItems.swift
//  Africa
//
//  Created by Vatana Chhorn on 26/12/2020.
//

import SwiftUI

struct VideoListItemsView: View {
    // MARK: - PROPERTIES
    let video : Video
    
    // MARK: - BODY
    var body: some View {
        HStack (spacing: 10){
            ZStack {
                
                Image(video.thubnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                    .cornerRadius(9)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4 )
            }  //: end of ZStack
            
            VStack(alignment: .leading, spacing: 10) {
                Text(video.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.accentColor)
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                
            } //: End of VStack
            
        }  //: end of Hstack
    }
}

// MARK: - PREVIEW
struct VideoListItems_Previews: PreviewProvider {
    static let videos : [Video] = Bundle.main.decodable("videos.json")
    static var previews: some View {
        VideoListItemsView(video: videos[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
