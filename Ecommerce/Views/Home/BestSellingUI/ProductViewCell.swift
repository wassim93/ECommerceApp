//
//  ProductViewCell.swift
//  Ecommerce
//
//  Created by wassim on 9/9/2021.
//

import SwiftUI
import Kingfisher
struct ProductViewCell: View {
    let product:Product
    @ObservedObject var hvm:HomeViewModel


    var body: some View {
        VStack(alignment:.leading,spacing:5) {
            ZStack {
                KFImage(URL(string: product.image))
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 150, alignment: .center)
                    .padding()
            }.background(colorGray)
            .cornerRadius(10)
            Text(product.title)
                .font(Font.custom("SFProDisplay-Medium", size: 16))
                .frame(width:130)
                .lineLimit(2)
            Text(product.description)
                .font(Font.custom("SFProDisplay-Regular", size: 12))
                .foregroundColor(colorGrayCaption)
                .frame(width:130)
                .lineLimit(3)
            Text("\(hvm.getPriceFor(note: product.price))$")
                .font(Font.custom("SFProDisplay-Medium", size: 16))
                .foregroundColor(greenColor)

        }.padding()
    }
}

struct ProductViewCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductViewCell(product: Product(id: 1, title: "title",
                                         description: "description", image: "",
                                         price: 0.0, rating: Rating(rate: 0.0, count: "count")),
                        hvm: HomeViewModel())
            .previewLayout(.sizeThatFits)
            .background(appBackgroundMainColor)
    }
}
