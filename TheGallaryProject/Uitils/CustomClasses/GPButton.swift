//
//  GPButton.swift
//  TheGallaryProject
//
//  Created by Shreeya Maskey on 8/28/21.
//

import UIKit

class GPButton: UIButton {
    
    let iconImg = UIImageView(image: #imageLiteral(resourceName: "group10Copy_2"))
    let buttonTitle = UILabel(text: "Button", color: AppColor.appBlack, font: Barlow.medium, size: 14, alignment: .center)
    
    init(title: String, icon: UIImage, color: UIColor) {
        super.init(frame: .zero)
        setupUI()
        iconImg.image = icon.withTintColor(color)
        buttonTitle.text = title
        buttonTitle.textColor = color
    }
    
    private func setupUI() {
        addSubview(iconImg)
        iconImg.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 4, left: 4, bottom: 0, right: 0))
        
        addSubview(buttonTitle)
        buttonTitle.anchor(top: iconImg.bottomAnchor, leading: nil, bottom: nil, trailing: nil, padding: .init(top: 4, left: 0, bottom: 0, right: 0))
        buttonTitle.centerXAnchor.constraint(equalTo: iconImg.centerXAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
