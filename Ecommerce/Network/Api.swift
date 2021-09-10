//
//  Api.swift
//  Ecommerce
//
//  Created by wassim on 9/9/2021.
//

import Foundation


struct Api{
    static let productUrl = "\(baseURL)/products"
    static let limitedProductUrl = "\(baseURL)/products?limit"
    
    
    static func getProducts(limit:Int?) -> String {
        if limit == nil {
            return productUrl
        }else{
            return "\(limitedProductUrl)=\(limit!)"
        }
    }
}
