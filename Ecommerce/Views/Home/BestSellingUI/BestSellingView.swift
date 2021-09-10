//
//  BestSellingView.swift
//  Ecommerce
//
//  Created by wassim on 9/9/2021.
//

import SwiftUI

struct BestSellingView: View {
    @ObservedObject var hvm:HomeViewModel

    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            HStack {
                Text("Best Selling")
                    .font(Font.custom("SFProDisplay-Bold", size: 18))
                    .foregroundColor(.black)
                    .padding(15)
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("See All")
                        .font(Font.custom("SFProDisplay-Regular", size: 16))
                        .foregroundColor(.black)
                        .padding(15)
                })
            }
            ScrollView(.horizontal,showsIndicators: false) {
                LazyHStack(spacing:0) {
                    ForEach(hvm.productsBest.prefix(4)) { prod in
                        ProductViewCell(product: prod,hvm:hvm)
                    }
                }
            }
        }
    }
}

struct BestSellingView_Previews: PreviewProvider {
    static var previews: some View {
        BestSellingView(hvm: HomeViewModel())
            .previewLayout(.sizeThatFits)
            .background(appBackgroundMainColor)
    }
}
