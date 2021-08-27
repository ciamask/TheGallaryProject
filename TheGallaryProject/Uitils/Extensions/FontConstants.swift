//
//  FontConstants.swift
//  TheGallaryProject
//
//  Created by Shreeya Maskey on 8/27/21.
//

import UIKit

typealias AppFont = UIFont

extension AppFont {
    static func font(with size: CGFloat, family: FontFamily?) -> AppFont {
        guard let family = family, let requiredFont = UIFont(name: family.value, size: size) else {
            return UIFont.systemFont(ofSize: size)
        }
        return requiredFont
    }
}

protocol FontFamily {
    var value: String { get }
}

enum Barlow: FontFamily {
    case medium
    case extraLight
    case condensedMedium
    case condensedLight
    case condensedExtraLight
    
    var value: String {
        switch self {
        case .medium: return "Barlow-Medium"
        case .extraLight: return "Barlow-ExtraLight"
        case .condensedMedium: return "BarlowCondensed-Medium"
        case .condensedLight: return "BarlowCondensed-Light"
        case .condensedExtraLight: return "BarlowCondensed-ExtraLight"
        }
    }
}
