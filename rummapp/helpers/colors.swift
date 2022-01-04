//
//  colors.swift
//  rummapp
//
//  Created by Jacob Gonzalez on 31/12/21.
//

import Foundation
import SwiftUI


struct CustomColor {
    static let brandColor = Color("BrandColor")
    static let primary = Color("PrimaryColor")
    static let onPrimary = Color.white
    static let secondary = Color("SecondaryColor")
    static let onSecondary = Color("SecondaryColor")
    static let error = Color("ErrorColor")
    static let clientGradient = [Color("Victoria"), Color("SteelBlue")]
    static let companyGradient = [Color("OceanGreen"), Color("Polerous")]
    static let collectorGradient = [Color("Matisse"), Color("Shakespeare")]
}


func getGradientByTheme(theme: String) -> [Color] {
    switch(theme) {
    case "client":
        return CustomColor.clientGradient
    case "company":
        return CustomColor.companyGradient
    case "collector":
        return CustomColor.collectorGradient
    default:
        return CustomColor.clientGradient
    }
}
