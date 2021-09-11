//
//  TitleView.swift
//  Ecommerce
//
//  Created by wassim on 11/9/2021.
//

import SwiftUI

struct TitleView: View {
    @StateObject var viewRouter: ViewRouter

    var body: some View {
        HStack(alignment: .center) {
            Text(viewRouter.pageTitle)
                .font(Font.custom("SFProDisplay-Bold", size: 35))
                .foregroundColor(.black)
                .padding([.leading,.trailing])
                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            Spacer()
        }
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(viewRouter: ViewRouter())
            .previewLayout(.sizeThatFits)
            .background(appBackgroundMainColor)
    }
}
