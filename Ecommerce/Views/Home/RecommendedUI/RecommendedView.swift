//
//  RecommendedView.swift
//  Ecommerce
//
//  Created by wassim on 9/9/2021.
//

import SwiftUI

struct RecommendedView: View {
    @StateObject var hvm:HomeViewModel
    @StateObject var viewRouter: ViewRouter
    
    private let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @State var currentIndex = 0
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text("Recommended")
                    .font(Font.custom("SFProDisplay-Bold", size: 18))
                    .foregroundColor(.black)
                    .padding(15)
                Spacer()
                Button(action: {
                    withAnimation {
                        viewRouter.currentPage = .recommended
                        viewRouter.pageTitle = RECOMMENDED

                    }
                }, label: {
                    Text("See All")
                        .font(Font.custom("SFProDisplay-Regular", size: 16))
                        .foregroundColor(.black)
                        .padding(15)
                })
            }
            TabView(selection: $currentIndex) {
                ForEach(hvm.productsRecommend) { prod in
                    RecommendedProductCell(product: prod)
                }
                .onReceive(timer, perform: { _ in
                    withAnimation {
                        currentIndex = currentIndex < limitProductNumber ? currentIndex+1 : 0
                    }
                })
            }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .frame(height:280)
        }
    }
}

struct RecommendedView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendedView(hvm: HomeViewModel(), viewRouter: ViewRouter())
            .previewLayout(.sizeThatFits)
            .background(appBackgroundMainColor)
    }
}
