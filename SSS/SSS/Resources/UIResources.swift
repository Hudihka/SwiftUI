//
//  UIResources.swift
//  SSS
//
//  Created by Константин Ирошников on 13.07.2022.
//

import Foundation
import SwiftUI
import UIKit

let hDdevice = UIScreen.main.bounds.size.height
let wDdevice = UIScreen.main.bounds.size.width

enum SSSColor {
    static let black          = Color(UIColor(hex: "#000000"))
    static let white          = Color(UIColor(hex: "#FFFFFF"))
    static let red            = Color(UIColor(hex: "#E01F1F"))
}

enum SSSImage {
    static let logo           = UIImage(named: "logo")
}
