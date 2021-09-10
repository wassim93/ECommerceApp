//
//  Rating.swift
//  Ecommerce
//
//  Created by wassim on 10/9/2021.
//

import SwiftUI


struct Rating : Codable {
    let rate: Double
    let count: String
    
    enum CodingKey : String {
        case rate
        case count
    }
    
     init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        rate = try container.decode(Double.self, forKey: .rate)
        do {
            count = try String(container.decode(Double.self, forKey: .count))
        } catch DecodingError.typeMismatch {
            count = try container.decode(String.self, forKey: .count)
        }
    }
    
}
