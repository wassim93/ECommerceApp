//
//  ContentView.swift
//  Ecommerce
//
//  Created by wassim on 9/9/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            VStack(spacing:10){
                ScrollView{
                    NavBarView()
                    CategorieView()
                    RecommendedView()
                    BestSellingView()
                }
                FooterView()
                    .padding(.horizontal,0)
            }.background(appBackgroundMainColor)
        }.ignoresSafeArea(.all,edges: [.top,.bottom])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
