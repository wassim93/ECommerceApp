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
            switch viewRouter.currentPage {
                case .home:
                    HomeView()
                case .cart:
                    Spacer()
                    Text("cart")
                    Spacer()
                case .user:
                    Spacer()
                    Text("User")
                    Spacer()
            }
            FooterView(viewRouter: viewRouter)
                .padding(.horizontal,0)
        }.background(appBackgroundMainColor)
        .ignoresSafeArea(.all,edges: [.top,.bottom])
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())
    }
}
