//
//  ProfileVC.swift
//  TheGallaryProject
//
//  Created by Shreeya Maskey on 8/27/21.
//

import UIKit

class ProfileVC: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
    }
    
    let currentView = ProfileView()
    let data = photosData()
    
    override func loadView() {
        view = currentView
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    private func setupCollectionView() {
        currentView.collectionView.register(Photoscell.self, forCellWithReuseIdentifier: Photoscell.cellId)
        currentView.collectionView.delegate = self
        currentView.collectionView.dataSource = self
    }
    
}

//MARK:- Collection Delegate Block
 

extension ProfileVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.getPhotos().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Photoscell.cellId, for: indexPath) as! Photoscell
        cell.backgroundColor = .systemGray
        let model = data.getPhotos()[indexPath.row]
        cell.configureCell(with: model)
        cell.backgroundColor = .black
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = ((collectionView.frame.width) / 2) - 5
        return CGSize(width: width, height: width)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
}
