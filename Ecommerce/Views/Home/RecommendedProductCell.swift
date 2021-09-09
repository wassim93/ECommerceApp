//
//  RecommendedProductCell.swift
//  Ecommerce
//
//  Created by wassim on 9/9/2021.
//

import SwiftUI

struct RecommendedProductCell: View {
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .fill(greenColor.opacity(0.5))
                .frame(height:260)
                .shadow(color: .black.opacity(0.5), radius: 8, x: 0.0, y: 8)
            Image("remote")
                .resizable()
                .scaledToFit()
                .frame(height: 260, alignment: .center)
        }.padding()
    }
}

struct RecommendedProductCell_Previews: PreviewProvider {
    static var previews: some View {
        RecommendedProductCell()
            .previewLayout(.sizeThatFits)
            .background(appBackgroundMainColor)
    }
}
