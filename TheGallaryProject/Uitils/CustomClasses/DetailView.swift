//
//  DetailView.swift
//  TheGallaryProject
//
//  Created by Shreeya Maskey on 8/27/21.
//

import UIKit

class DetailView: UIView {
    
    let iconImg = UIImageView(image: #imageLiteral(resourceName: "group"), contentMode: .scaleAspectFit, clipsToBounds: false)
    let titleLabel = UILabel(text: "Title", color: AppColor.appBlack, font: Barlow.condensedLight, size: 28, numberOfLines: 0, alignment: .left)
    let detailLabel = UILabel(text: "Detail", color: AppColor.textGray, font: Barlow.extraLight, size: 16, numberOfLines: 0, alignment: .left)
    
    init(icon: UIImage, title: String, detail: String) {
        super.init(frame: .zero)
        iconImg.image = icon
        titleLabel.text = title
        detailLabel.text = detail
        constraintHeight(constant: 340)
        setupUI()
    }
    
    private func setupUI() {
        addSubview(iconImg)
        iconImg.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 0, left: 0, bottom: 0, right: 0))
        iconImg.constraintHeight(constant: 94)
        iconImg.constraintWidth(constant: 90)
        
        addSubview(titleLabel)
        titleLabel.anchor(top: iconImg.bottomAnchor, leading: leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 30, left: 0, bottom: 0, right: 0))
        
        addSubview(detailLabel)
        detailLabel.anchor(top: titleLabel.bottomAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: .init(top: 30, left: 0, bottom: 0, right: 30))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
