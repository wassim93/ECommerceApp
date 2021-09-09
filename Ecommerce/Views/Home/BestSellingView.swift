//
//  BestSellingView.swift
//  Ecommerce
//
//  Created by wassim on 9/9/2021.
//

import SwiftUI

struct BestSellingView: View {
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
                LazyHStack(spacing:12) {
                    ForEach(0...12, id:\.self) { index in
                        ProductViewCell()
                    }
                }
            }
        }
    }
}

struct BestSellingView_Previews: PreviewProvider {
    static var previews: some View {
        BestSellingView()
            .previewLayout(.sizeThatFits)
            .background(appBackgroundMainColor)
    }
}
