//
//  HomeViewModel.swift
//  Ecommerce
//
//  Created by wassim on 9/9/2021.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    var categories = [Categorie]()
    @Published var products = [Product]()
    
    
    
    
    init() {
        getCategories()
        getRecommended(limit: limitProductNumber)
    }
    
    
    func getCategories() {
        self.categories =  categoriesData
    }
    
    
    
    func getRecommended(limit:Int?) {
        NetworkManager<Product>.fetch(for: URL(string: Api.getProducts(limit: limit))!) { (res) in
            switch res{
                case .success(let response) :
                    DispatchQueue.main.async {
                        self.products = response
                    }
                case .failure(let err):
                    print(err)
            }
        }
    }
}
