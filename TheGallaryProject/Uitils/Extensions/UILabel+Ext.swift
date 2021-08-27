//
//  UILabel+Ext.swift
//  TheGallaryProject
//
//  Created by Shreeya Maskey on 8/27/21.
//

import UIKit

extension UILabel {
    convenience init(text: String, color: UIColor = .white, font: FontFamily, size: CGFloat, numberOfLines: Int? = nil, alignment: NSTextAlignment? = nil) {
        self.init(frame: .zero)
        self.text = text
        self.textColor = color
        self.font = UIFont.font(with: size, family: font)
        if let lines = numberOfLines {
            self.numberOfLines = lines
        }
        if let alignment = alignment {
            self.textAlignment = alignment
        }
    }
}
