//
//  HorizontalStackView.swift
//  TheGallaryProject
//
//  Created by Shreeya Maskey on 8/27/21.
//

import UIKit

class HorizontalStackView: UIStackView {
    
    init(arrangedSubViews: [UIView], spacing: CGFloat = 0, distribution: UIStackView.Distribution? = nil) {
        super.init(frame: .zero)
        arrangedSubViews.forEach({addArrangedSubview($0)})
        self.spacing = spacing
        if let distribution = distribution {
            self.distribution = distribution
        }
        axis = .horizontal
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
