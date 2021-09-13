    //
    //  AllRecommendedView.swift
    //  Ecommerce
    //
    //  Created by wassim on 11/9/2021.
    //
    
    import SwiftUI
    
    struct AllRecommendedView: View {
        private let gridItems :[GridItem] = Array(repeating: .init(.flexible(),spacing:5), count: 2)
        @ObservedObject var hvm:HomeViewModel
        
        var body: some View {
            NavigationView{
                ScrollView{
                    LazyVGrid(columns: gridItems){
                        ForEach(hvm.productsRecommend) { prod in
                            NavigationLink(destination: ProductDetailView()) {
                                AllRecommendedCell(product: prod, hvm: hvm)
                            }
                        }
                    }
                }
            }
        }
    }
    
    struct AllRecommendedView_Previews: PreviewProvider {
        static var previews: some View {
            AllRecommendedView(hvm: HomeViewModel())
                .previewLayout(.sizeThatFits)
                .background(appBackgroundMainColor)
        }
    }
