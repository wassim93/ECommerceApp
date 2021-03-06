//
//  ContentView.swift
//  Ecommerce
//
//  Created by wassim on 9/9/2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewRouter: ViewRouter
    @StateObject var hvm:HomeViewModel = HomeViewModel()
    @State var isTabHidden = false
    @State var isTitleViewHidden = false
    var body: some View {
            VStack(spacing: 10) {
                TitleView(viewRouter: viewRouter, isTitleViewHidden: $isTitleViewHidden)
                switch viewRouter.currentPage {
                case .home:
                        HomeView(hvm: hvm, viewRouter: viewRouter)
                case .cart:
                        Spacer()
                        Text("cart")
                        Spacer()
                case .user:
                        Spacer()
                        Text("User")
                        Spacer()
                case .recommended:
                        Spacer()
                        AllRecommendedView(hvm: hvm, viewRouter: viewRouter)
                        Spacer()
                case .bestSelling:
                        Spacer()
                        Text("best")
                        Spacer()
                case .detail:
                        Spacer()
                    ProductDetailView(hvm: hvm,isTabHidden: $isTabHidden, isTitleViewHidden: $isTitleViewHidden)
                        Spacer()
                }
                FooterView(viewRouter: viewRouter, isTabHidden: $isTabHidden)
                    .padding(.horizontal,0)
            }
            .ignoresSafeArea(.all,edges: [.top,.bottom])
        }
    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())
    }
}
