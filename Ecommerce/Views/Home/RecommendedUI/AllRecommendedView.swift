    //
    //  AllRecommendedView.swift
    //  Ecommerce
    //
    //  Created by wassim on 11/9/2021.
    //

    import SwiftUI

    struct AllRecommendedView: View {
        private let gridItems :[GridItem] = Array(repeating: .init(.flexible(),spacing:5), count: 2)
        @StateObject var hvm:HomeViewModel
        @StateObject var viewRouter: ViewRouter


        var body: some View {
            ScrollView {
                LazyVGrid(columns: gridItems) {
                    ForEach(hvm.productsRecommend) { prod in
                        AllRecommendedCell(product: prod, hvm: hvm).onTapGesture {
                            viewRouter.currentPage = .detail
                            hvm.setSelectedProd(prod: prod)
                        }
                    }
                }
            }
        }
    }

    struct AllRecommendedView_Previews: PreviewProvider {
        static var previews: some View {
            AllRecommendedView(hvm: HomeViewModel(), viewRouter: ViewRouter())
                .previewLayout(.sizeThatFits)
                .background(appBackgroundMainColor)
        }
    }
