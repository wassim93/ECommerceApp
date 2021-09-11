//
//  EcommerceApp.swift
//  Ecommerce
//
//  Created by wassim on 9/9/2021.
//

import SwiftUI

@main
struct EcommerceApp: App {
    @StateObject var viewRouter = ViewRouter()


    var body: some Scene {
        WindowGroup {
            ContentView(viewRouter: viewRouter)
        }
    }
}
