//
//  ViewRouter.swift
//  Ecommerce
//
//  Created by wassim on 10/9/2021.
//

import SwiftUI


class ViewRouter: ObservableObject {
    @Published var currentPage: Page = .home
    @Published var pageTitle = EXPLORE


}


enum Page {
     case home
     case cart
     case user
     case recommended
     case bestSelling
 }


