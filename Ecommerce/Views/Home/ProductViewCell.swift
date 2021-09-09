//
//  ProductViewCell.swift
//  Ecommerce
//
//  Created by wassim on 9/9/2021.
//

import SwiftUI

struct ProductViewCell: View {
    var body: some View {
        VStack(alignment:.leading,spacing:5){
            
            ZStack {
                Image("watch")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 200, alignment: .center)
                    .padding()
            }.background(colorGray)
            .cornerRadius(10)
            Text("Watch for men")
                .font(Font.custom("SFProDisplay-Medium", size: 16))
            Text("Rolex swiss")
                .font(Font.custom("SFProDisplay-Regular", size: 12))
                .foregroundColor(colorGrayCaption)
            Text("750$")
                .font(Font.custom("SFProDisplay-Medium", size: 16))
                .foregroundColor(greenColor)

        }.padding()
    }
}

struct ProductViewCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductViewCell()
            .previewLayout(.sizeThatFits)
            .background(appBackgroundMainColor)
    }
}
