//
//  UIImageView+Ext.swift
//  TheGallaryProject
//
//  Created by Shreeya Maskey on 8/27/21.
//

import UIKit

extension UIImageView {
    convenience init(image: UIImage? = nil, contentMode: UIView.ContentMode, clipsToBounds: Bool = false) {
        self.init(frame: .zero)
        self.contentMode = contentMode
        self.clipsToBounds = clipsToBounds
        self.image = image
    }
}
