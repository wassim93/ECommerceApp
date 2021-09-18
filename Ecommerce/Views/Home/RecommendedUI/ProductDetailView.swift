//
//  ProductDetailView.swift
//  Ecommerce
//
//  Created by wassim on 13/9/2021.
//

import SwiftUI

struct ProductDetailView: View {
    @StateObject var hvm:HomeViewModel

    var body: some View {
        Text(hvm.selectedProd.title)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(hvm: HomeViewModel())
    }
}
