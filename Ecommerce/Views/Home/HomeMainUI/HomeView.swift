//
//  HomeView.swift
//  Ecommerce
//
//  Created by wassim on 10/9/2021.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var hvm:HomeViewModel
    var body: some View {
        ScrollView(showsIndicators:false){
            NavBarView()
            CategorieView()
            RecommendedView(hvm: hvm)
            BestSellingView()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(hvm: HomeViewModel())
    }
}
