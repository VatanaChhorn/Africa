//
//  animalModel.swift
//  Africa
//
//  Created by Vatana Chhorn on 08/12/2020.
//

import Foundation

struct Animal : Codable, Identifiable  {
    let id: String
    let name: String
    let headline : String
    let description: String
    let link : String
    let image : String
    let gallery: [String]
    let fact: [String]
}
