//
//  AppColor.swift
//  weight_tracker_app
//
//  Created by Büşra Güneş on 24.07.2022.
//

import Foundation
import UIKit
import SwiftUI

struct AppColor {
enum ColorType: String {
    case BG_BlueColor = "bgBlueColor"
    case DarkGray = "DarkGray"
    case Bold = "Montserrat-Bold"
    case BoldItalic = "Montserrat-BoldItalic"
    case ExtraBold = "Montserrat-ExtraBold"
    case ExtraBoldItalic = "Montserrat-ExtraBoldItalic"
    case ExtraLight = "Montserrat-ExtraLight"
    case ExtraLightItalic = "Montserrat-ExtraLightItalic"
    case Italic = "Montserrat-Italic"
    case Light = "Montserrat-Light"
    case LightItalic = "Montserrat-LightItalic"
    case Medium = "Montserrat-Medium"
    case MediumItalic = "Montserrat-MediumItalic"
    case Regular = "Montserrat-Regular"
    case SemiBold = "Montserrat-SemiBold"
    case SemiBoldItalic = "Montserrat-SemiBoldItalic"
    case Thin = "Montserrat-Thin"
    case ThinItalic = "Montserrat-ThinItalic"
    case Italic_VariableFont_Weight = "Montserrat-Italic-VariableFont_wght"
    case VariableFont_Weight = "Montserrat-VariableFont_wght"
}
static func getColor(type: ColorType) -> Color{
    return Color(type.rawValue)
}
}
