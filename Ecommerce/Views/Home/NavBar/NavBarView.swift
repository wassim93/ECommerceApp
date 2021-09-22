//
//  NavBarView.swift
//  Ecommerce
//
//  Created by wassim on 9/9/2021.
//

import SwiftUI

struct NavBarView: View {
    @State private var searchTxt = ""

    var body: some View {
        HStack(alignment: .center,spacing:10) {
            
            ZStack(alignment: .leading) {
                Image("Icon_Search")
                    .padding(12)
                TextField("", text: $searchTxt)
                    .padding(.horizontal,35)
            }.background(colorGrayInput)
            .cornerRadius(30)
            .padding([.leading],10)
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image("Search_Camera")
            }).padding(.trailing,10)

        }.shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 5)
        .padding(.top)
        .padding(.bottom)
        
    }
}

struct NavBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
