//
//  BuddleExtension.swift
//  Africa
//
//  Created by Vatana Chhorn on 27/11/2020.
//

import Foundation

extension Bundle {
    
    /* T is stand for Type - which in the case of swift generic */
    
    func decodable <T: Codable> (_ file: String) -> T {
        
        // MARK: - 1. Locate Json File
        
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Fail to locate Json File.")
        }
        
        // MARK: - 2. Create a property for data
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Fail to load the data.")
        }
        
        // MARK: - 3. Create a decoder
        
        let decoder = JSONDecoder()
        
        // MARK: - 4. Create a property for decoded data
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Fail to load data.")
        }
        
        // MARK: - 5. Return ready to use data
        
        return loaded
        
    }
}
