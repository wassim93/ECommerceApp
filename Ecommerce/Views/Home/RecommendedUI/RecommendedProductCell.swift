//
//  RecommendedProductCell.swift
//  Ecommerce
//
//  Created by wassim on 9/9/2021.
//

import SwiftUI
import Kingfisher

struct RecommendedProductCell: View {
    let product:Product
    var body: some View {
        GeometryReader{ proxy in
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .fill(appBackgroundMainColor)
                    .frame(height:260)
                KFImage(URL(string: product.image))
                    .resizable()
                    .scaledToFit()
                    .frame(height: 260, alignment: .center)
                    .overlay(colorGrayCaption
                                .opacity(0.1)
                                .cornerRadius(30)
                                .frame(width: proxy.size.width-20, height: 260, alignment: .center)
                                .shadow(color: .black.opacity(0.5), radius: 5, x: 0.0, y: 5))
            }.padding()
        }
    }
}

struct RecommendedProductCell_Previews: PreviewProvider {
    static var previews: some View {
        RecommendedProductCell(product: Product(id: 1, title: "", description: "", image: "https://fakestoreapi.com/img/61U7T1koQqL._AC_SX679_.jpg", price: 0.0, rating: Rating(rate: 0.0, count: "")))
            .previewLayout(.sizeThatFits)
            .background(appBackgroundMainColor)
    }
}
