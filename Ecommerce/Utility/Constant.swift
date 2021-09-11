//
//  Constant.swift
//  Ecommerce
//
//  Created by wassim on 9/9/2021.
//

import SwiftUI


//DATA

let categoriesData:[Categorie] = [.init(id: 1, name: "Men", image: "Icon_User"),
                              .init(id: 2, name: "Women", image: "Icon_Womens"),
                              .init(id: 3, name: "Devices", image: "Icon_Devices"),
                              .init(id: 4, name: "Gadgets", image: "Icon_Gadgets"),
                              .init(id: 5, name: "Gaming", image: "Icon_Gaming")]


//COLOR

let colorBackground:Color = Color("ColorBackground")
let colorGray:Color = Color(hex: "F1F1F1")
let colorGrayInput:Color = Color(hex: "F7F7F7")
let colorWhite:Color = Color(.white)
let appBackgroundMainColor:Color = Color(hex: "FDFDFD")
let greenColor:Color = Color(hex: "00C569")
let colorGrayCaption:Color = Color(hex: "929292")




//LAYOUT

//UX


//IMAGE

//FONt

/*SF Pro Display
== SFProDisplay-Regular
== SFProDisplay-LightItalic
== SFProDisplay-Medium
== SFProDisplay-SemiboldItalic
== SFProDisplay-Bold
== SFProDisplay-HeavyItalic
== SFProDisplay-BlackItalic
*/

//STRING

//API

let baseURL:String = "https://fakestoreapi.com"

let limitProductNumber = 5

let EXPLORE = "Explore"
let CART = "Cart"
let USER = "User"
let RECOMMENDED = "Recommended"
let BEST_SELLING = "Best Selling"



