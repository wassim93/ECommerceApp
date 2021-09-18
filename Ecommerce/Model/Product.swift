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
   
    
    internal init(id: Int, title: String, description: String, image: String, price: Double, rating: Rating) {
        self.id = id
        self.title = title
        self.description = description
        self.image = image
        self.price = price
        self.rating = rating
    }
    
    
    
    
    
    enum CodingKey : String {
        case id
        case title
        case description
        case image
        case price
        case rating
    }
}
