//
//  Bundle-Decodable.swift
//  Moonshot
//
//  Created by Vlad Gershun on 1/13/22.
//

import SwiftUI
import Combine

extension Bundle {
    func missionDecode<T: Codable>(_ file: String) -> T {
        let decoder = JSONDecoder()
        let formatter = DateFormatter()
        formatter.dateFormat = "y-MM-dd"
        decoder.dateDecodingStrategy = .formatted(formatter)
        return decode(file, decoder)
    }
    
    func decode<S:Decodable, D:TopLevelDecoder>(_ file: String, _ decoder: D) -> S where Data == D.Input {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        guard let loaded = try? decoder.decode(S.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        return loaded
    }
}

