//
//  PhotosCell.swift
//  TheGallaryProject
//
//  Created by Shreeya Maskey on 8/28/21.
//

import UIKit

class Photoscell: UICollectionViewCell {
    static let cellId = "photosCell"
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        addSubview(postImage)
        postImage.fillSuperview()
    }
    
    let postImage = UIImageView(image: #imageLiteral(resourceName: "bitmapCopy10"), contentMode: .scaleToFill, clipsToBounds: true)
        
    
    func configureCell(with data: photosModel) {
        postImage.image = data.cellPhotos
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
