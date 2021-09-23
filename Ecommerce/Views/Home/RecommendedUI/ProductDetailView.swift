//
//  ProductDetailView.swift
//  Ecommerce
//
//  Created by wassim on 13/9/2021.
//

import SwiftUI

struct ProductDetailView: View {
    @StateObject var hvm:HomeViewModel
    @Binding var isHidden:Bool
    @Binding var isBackHidden:Bool



    var body: some View {

        
        Text(hvm.selectedProd.title)
            .onAppear {
                isHidden.toggle()
                isBackHidden.toggle()
            }
            .onDisappear {
                isHidden.toggle()
                isBackHidden.toggle()
            }
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(hvm: HomeViewModel(), isHidden: .constant(true), isBackHidden: .constant(false))
    }
}
