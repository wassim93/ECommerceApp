//
//  ContentView.swift
//  Ecommerce
//
//  Created by wassim on 9/9/2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewRouter: ViewRouter
    @ObservedObject var hvm:HomeViewModel = HomeViewModel()
    var body: some View {
            VStack(spacing:10){
                TitleView(viewRouter: viewRouter)
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
                        AllRecommendedView()
                        Spacer()
                    case .bestSelling:
                        Spacer()
                        Text("best")
                        Spacer()
                }
                FooterView(viewRouter: viewRouter)
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
