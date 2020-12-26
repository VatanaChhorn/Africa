//
//  VideoModel.swift
//  Africa
//
//  Created by Vatana Chhorn on 26/12/2020.
//

import Foundation

struct Video: Codable, Identifiable {
    let id : String
    let name: String
    let headline : String

    // Computed properties
    var thubnail : String {
        "video-\(id)"
    }
}


