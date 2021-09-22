//
//  CategorieView.swift
//  Ecommerce
//
//  Created by wassim on 9/9/2021.
//

import SwiftUI

struct CategorieView: View {
    
    @StateObject var hvm:HomeViewModel
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Categories")
                .font(Font.custom("SFProDisplay-Bold", size: 18))
                .foregroundColor(.black)
                .padding(.leading,15)
            
            ScrollView(.horizontal,showsIndicators: false) {
                LazyHStack(spacing:12) {
                    ForEach(hvm.categories) { cat in
                        CategorieCellView(categorie: cat)
                    }
                }
            }.frame(height: 120)
            .padding([.trailing,.leading,.top],8)
         
        }
    }
}

struct CategorieView_Previews: PreviewProvider {
    static var previews: some View {
        CategorieView(hvm: HomeViewModel())
            .previewLayout(.sizeThatFits)
            .background(appBackgroundMainColor)
    }
}
