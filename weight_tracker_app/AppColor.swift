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
 
}
static func getColor(type: ColorType) -> Color{
    return Color(type.rawValue)
}
}
