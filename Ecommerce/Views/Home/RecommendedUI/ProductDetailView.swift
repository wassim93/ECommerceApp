//
//  ProductDetailView.swift
//  Ecommerce
//
//  Created by wassim on 13/9/2021.
//

import SwiftUI
import Kingfisher

struct ProductDetailView: View {
    @StateObject var hvm:HomeViewModel
    @Binding var isTabHidden:Bool
    @Binding var isTitleViewHidden:Bool



    var body: some View {

            VStack {
                KFImage(URL(string: hvm.selectedProd.image))
                    .placeholder { Color.gray }
                    .resizable()
                    .scaledToFit()
                    .overlay(NavBarTop(),alignment: .topLeading)

                Text(hvm.selectedProd.title)
                Spacer()

            }.ignoresSafeArea(.all,edges: [.top])
        .onAppear {
            isTabHidden.toggle()
            isTitleViewHidden.toggle()
        }
        .onDisappear {
            isTabHidden.toggle()
            isTitleViewHidden.toggle()
        }
    }
}

struct NavBarTop:View {

    var body: some View {
        ZStack {
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "chevron.backward")
                        .padding()
                        .foregroundColor(.white)
                        .frame(width: 80, height: 80, alignment: .leading)

                })
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "star")
                        .padding()
                        .foregroundColor(.white)
                        .frame(width: 50, height: 50, alignment: .center)
                        .background(Color.red)
                        .cornerRadius(25)

                })
            }
        }.padding(25)
    }
}


struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(hvm: HomeViewModel(), isTabHidden: .constant(true), isTitleViewHidden: .constant(true))
    }
}
