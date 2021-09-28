//
//  TitleView.swift
//  Ecommerce
//
//  Created by wassim on 11/9/2021.
//

import SwiftUI

struct TitleView: View {
    @StateObject var viewRouter: ViewRouter
    @Binding var isTitleViewHidden:Bool

    var body: some View {
        if !isTitleViewHidden {
            HStack(alignment: .center) {
                     Text(viewRouter.pageTitle)
                         .font(Font.custom("SFProDisplay-Bold", size: 35))
                         .foregroundColor(.black)
                         .padding([.leading,.trailing])
                     Spacer()
            }.padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
        }

    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(viewRouter: ViewRouter(), isTitleViewHidden: .constant(true))
            .previewLayout(.sizeThatFits)
            .background(appBackgroundMainColor)
    }
}
