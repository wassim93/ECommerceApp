//
//  FooterView.swift
//  Ecommerce
//
//  Created by wassim on 9/9/2021.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        HStack (alignment: .center){
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Explore")
                        .font(Font.custom("SFProDisplay-Bold", size: 14))
                        .foregroundColor(.black)
            }).padding([.top,.leading,.bottom],30)
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image("Icon_Cart")
            }).padding(30)
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image("Icon_User")
            }).padding(30)
        }.background(colorWhite)
        .shadow(color: .black.opacity(0.1), radius: 5, x: 0.0, y: -5)
        
    }
   
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(Color.white)
    }
}
