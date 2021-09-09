//
//  HomeViewModel.swift
//  Ecommerce
//
//  Created by wassim on 9/9/2021.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    var categories = [Categorie]()
    
    
    
    init() {
        getCategories()
    }
    
    
    func getCategories() {
        self.categories =  categoriesData
    }
}
