//
//  AllRecommendedCell.swift
//  Ecommerce
//
//  Created by wassim on 13/9/2021.
//

import SwiftUI
import Kingfisher

struct AllRecommendedCell: View {
    let product:Product
    @ObservedObject var hvm:HomeViewModel
    
    
    var body: some View {
        VStack(alignment: .center, spacing: 5){
            KFImage(URL(string: product.image))
                .resizable()
                .scaledToFit()
            
            Text(product.title)
                .font(Font.custom("SFProDisplay-Medium", size: 16))
                .foregroundColor(.black)
                .lineLimit(2)
                .padding([.leading,.trailing])
            Text(product.description)
                .font(Font.custom("SFProDisplay-Regular", size: 12))
                .foregroundColor(colorGrayCaption)
                .lineLimit(3)
                .padding([.leading,.trailing])
            Text("\(hvm.getPriceFor(note: product.price))$")
                .font(Font.custom("SFProDisplay-Medium", size: 16))
                .foregroundColor(greenColor)
        }
        .frame(height:300)
        
        .overlay(
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color.black.opacity(0.2), lineWidth: 1)
        )
        .padding([.leading,.trailing],5)
        
        
    }
}

struct AllRecommendedCell_Previews: PreviewProvider {
    static var previews: some View {
        AllRecommendedCell(product: Product(id: 1, title: "prod title prod titleprod titleprod titleprod titleprod titleprod titleprod title", description: "prod desc prod titleprod titleprod titleprod titleprod titleprod titleprod titleprod titleprod titleprod titleprod titleprod titleprod titleprod title", image: "https://fakestoreapi.com/img/61U7T1koQqL._AC_SX679_.jpg", price: 0.0, rating: Rating(rate: 0.0, count: "")), hvm: HomeViewModel()).previewLayout(.sizeThatFits)
            .background(appBackgroundMainColor)
    }
}
