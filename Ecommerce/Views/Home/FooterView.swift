//
//  FooterView.swift
//  Ecommerce
//
//  Created by wassim on 9/9/2021.
//

import SwiftUI

struct FooterView: View {
    @StateObject var viewRouter: ViewRouter
    @Binding var isHidden:Bool
    var body: some View {
        if !isHidden {
            HStack(alignment: .center) {
                Button(action: {
                    viewRouter.currentPage = .home
                    withAnimation {
                        viewRouter.pageTitle = EXPLORE
                    }
                }, label: {
                    Text("Explore")
                        .font(Font.custom("SFProDisplay-Bold", size: 14))
                        .foregroundColor(.black)
                }).padding([.top,.leading,.bottom],30)
                Spacer()
                Button(action: {
                    viewRouter.currentPage = .cart
                    withAnimation {
                        viewRouter.pageTitle = CART
                    }
                }, label: {
                    Image("Icon_Cart")
                }).padding(30)
                Spacer()
                Button(action: {
                    viewRouter.currentPage = .user
                    withAnimation {
                        viewRouter.pageTitle = USER
                    }
                }, label: {
                    Image("Icon_User")
                }).padding(30)
            }.background(colorWhite)
            .shadow(color: .black.opacity(0.1), radius: 5, x: 0.0, y: -5)
        }

        
    }
    
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView(viewRouter: ViewRouter(), isHidden: .constant(false))
            .previewLayout(.sizeThatFits)
            .background(Color.white)
    }
}
