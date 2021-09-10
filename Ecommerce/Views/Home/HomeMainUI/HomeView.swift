//
//  HomeView.swift
//  Ecommerce
//
//  Created by wassim on 10/9/2021.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var hvm:HomeViewModel = HomeViewModel()
    var body: some View {
        ScrollView{
            NavBarView()
            CategorieView()
            RecommendedView()
            BestSellingView()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
