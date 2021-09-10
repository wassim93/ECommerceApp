//
//  Product.swift
//  Ecommerce
//
//  Created by wassim on 10/9/2021.
//

import SwiftUI


struct Product : Codable,Identifiable {
    let id:Int
    let title,description,image:String
    let price:Double
    let rating:Rating
    
    
    
    enum CodingKey : String {
        case id
        case title
        case description
        case image
        case price
        case rating
    }
}
