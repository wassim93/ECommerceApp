//
//  ViewRouter.swift
//  Ecommerce
//
//  Created by wassim on 10/9/2021.
//

import SwiftUI


class ViewRouter: ObservableObject {
    @Published var currentPage: Page = .home

}


enum Page {
     case home
     case cart
     case user
 }