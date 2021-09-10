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
        getRecommended()
    }
    
    
    func getCategories() {
        self.categories =  categoriesData
    }
    
    
    
    func getRecommended() {
        NetworkManager<Product>.fetch(for: URL(string: Api.productUrl)!) { (res) in
            switch res{
                case .success(let response) :
                    DispatchQueue.main.async {
                        //print(response)
                        self.products = response
                    }
                case .failure(let err):
                    print(err)
            }
        }
    }
}
