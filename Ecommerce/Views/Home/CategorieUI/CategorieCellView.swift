//
//  CategorieCellView.swift
//  Ecommerce
//
//  Created by wassim on 9/9/2021.
//

import SwiftUI

struct CategorieCellView: View {
    var categorie:Categorie
    var body: some View {
        VStack(spacing:12) {
            ZStack {
                Circle().fill(appBackgroundMainColor).frame(width: 70, height: 70, alignment: .center)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(categorie.image)
                }).padding(20)
            }.shadow(color: .black.opacity(0.15), radius: 5, x: 0.0, y: 5)
            Text(categorie.name.capitalized)
                .font(Font.custom("SFProDisplay-Regular", size: 12))
                .foregroundColor(.black)
                .padding(.bottom)
        }
    }
}

struct CategorieCellView_Previews: PreviewProvider {
    static var previews: some View {
        CategorieCellView(categorie: .init(id: 1, name: "men", image: "Icon_Womens"))
            .previewLayout(.sizeThatFits)
            .background(appBackgroundMainColor)
    }
}
