//
//  RecommendedView.swift
//  Ecommerce
//
//  Created by wassim on 9/9/2021.
//

import SwiftUI

struct RecommendedView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            HStack {
                Text("Recommended")
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
            TabView{
                ForEach(0...12, id:\.self) { index in
                    RecommendedProductCell()
                }
            }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .frame(height:280)
        }
    }
}

struct RecommendedView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendedView()
            .previewLayout(.sizeThatFits)
            .background(appBackgroundMainColor)
    }
}
