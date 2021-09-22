//
//  HomeView.swift
//  Ecommerce
//
//  Created by wassim on 10/9/2021.
//

import SwiftUI

struct HomeView: View {
    @StateObject var hvm:HomeViewModel
    @StateObject var viewRouter: ViewRouter

    var body: some View {
            ScrollView(showsIndicators:false) {
                NavBarView()
                CategorieView(hvm: hvm)
                RecommendedView(hvm: hvm, viewRouter: viewRouter)
                BestSellingView(hvm: hvm, viewRouter: viewRouter)
            }
        
       
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(hvm: HomeViewModel(), viewRouter: ViewRouter())
    }
}
