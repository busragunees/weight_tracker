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
        case TargetColor = "TargetColor"
        case CurrentColor = "CurrentColor"
        case BeginningColor = "BeginningColor"
        case RemainingColor = "RemainingColor"
        case purpleColor = "purpleColor"
        case ChartTitle = "ChartTitle"
        case CardTitleColor = "CardTitleColor"
        case LightPurple = "LightPurple"
        
    }
    static func getColor(type: ColorType) -> Color{
        return Color(type.rawValue)
    }
    static func getUIColor(type:ColorType)-> UIColor{
        return UIColor(Color(type.rawValue))
    }
}
