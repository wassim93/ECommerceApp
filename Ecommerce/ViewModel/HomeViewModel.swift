//
//  HomeViewModel.swift
//  Ecommerce
//
//  Created by wassim on 9/9/2021.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    var categories = [Categorie]()
    @Published var productsRecommend = [Product]()
    @Published var productsBest = [Product]()

    
    
    
    
    init() {
        getCategories()
        getRecommended(limit: limitProductNumber)
        getBestSelling()
    }
    
    
    func getCategories() {
        self.categories =  categoriesData
    }
    
    
    
    func getRecommended(limit:Int?) {
        NetworkManager<Product>.fetch(for: URL(string: Api.getProducts(limit: limit))!) { (res) in
            switch res{
                case .success(let response) :
                    DispatchQueue.main.async {
                        self.productsRecommend = response
                    }
                case .failure(let err):
                    print(err)
            }
        }
    }
    
    func getBestSelling() {
        NetworkManager<Product>.fetch(for: URL(string: Api.bestSellingUrl)!) { (res) in
            switch res{
                case .success(let response) :
                    DispatchQueue.main.async {
                        self.productsBest = response
                    }
                case .failure(let err):
                    print(err)
            }
        }
    }
    
    func getPriceFor(note:Double) -> String {
            
            return String(format: "%.1f", note)
        }
}
