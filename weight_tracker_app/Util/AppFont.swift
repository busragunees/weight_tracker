//
//  AppFont.swift
//  weight_tracker_app
//
//  Created by Büşra Güneş on 23.07.2022.
//

import Foundation
import UIKit
import SwiftUI

struct AppFont {
enum FontType: String {
    case Black = "Montserrat-Black"
    case BlackItalic = "Montserrat-BlackItalic"
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
static func font(type: FontType, size: CGFloat) -> Font{
    return Font(UIFont(name: type.rawValue, size: size)!)
}
}
