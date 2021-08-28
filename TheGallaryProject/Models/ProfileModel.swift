//
//  ProfileModel.swift
//  TheGallaryProject
//
//  Created by Shreeya Maskey on 8/28/21.
//

import UIKit

struct photosModel {
    let cellPhotos: UIImage
}

struct photosData{
    private var data = [photosModel]()

    init() {
        data.append(photosModel(cellPhotos: #imageLiteral(resourceName: "3")))
        data.append(photosModel(cellPhotos: #imageLiteral(resourceName: "1")))
        data.append(photosModel(cellPhotos: #imageLiteral(resourceName: "5")))
        data.append(photosModel(cellPhotos: #imageLiteral(resourceName: "4")))
        data.append(photosModel(cellPhotos: #imageLiteral(resourceName: "6")))
        data.append(photosModel(cellPhotos: #imageLiteral(resourceName: "2")))
    }
    
    func getPhotos() -> [photosModel] {
        return data
    }
}
