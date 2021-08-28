//
//  ProfileView.swift
//  TheGallaryProject
//
//  Created by Shreeya Maskey on 8/27/21.
//

import UIKit

class ProfileView: UIView {
    
    let scrollView = UIScrollView()
    let contentView = UIView()
    
    let logoShort = UIButton(buttonImage: #imageLiteral(resourceName: "combinedShape-2"))
    let profileButton = UIButton()
    let profileIcon = UIImageView(image: #imageLiteral(resourceName: "group6Copy2"))
    let addIcon = UIButton(buttonImage: #imageLiteral(resourceName: "invalidName-1"))
    let menuIcon = UIButton(buttonImage: #imageLiteral(resourceName: "group4Copy2"))
    let upload = GPButton(title: "Uploads", icon: #imageLiteral(resourceName: "group10Copy"), color: AppColor.appBlue)
    let edit = GPButton(title: "Edit", icon: #imageLiteral(resourceName: "group6Copy"), color: AppColor.appBlue)
    let profilePic = UIImageView(image: #imageLiteral(resourceName: "bitmap"), contentMode: .scaleAspectFill, clipsToBounds: true)
    let profileName = UILabel(text: "john.doe", color: AppColor.appBlack, font: Barlow.condensedExtraLight, size: 36, alignment: .center)
    let myDashboard = UILabel(text: "My dashboard", color: AppColor.appBlack, font: Barlow.condensedLight, size: 18)
    let switchButton = UISwitch()
    let line1 = UIView()
    let followers = UILabel(text: "2.3K", color: AppColor.appBlack, font: Barlow.condensedLight, size: 24, alignment: .center)
    let followersLabel = UILabel(text: "Followers", color: AppColor.appBlack, font: Barlow.condensedLight, size: 18, alignment: .center)
    let artworks = UILabel(text: "50", color: AppColor.appBlack, font: Barlow.condensedLight, size: 24, alignment: .center)
    let artworksLabel = UILabel(text: "Artworks", color: AppColor.appBlack, font: Barlow.condensedLight, size: 18, alignment: .center)
    let exhibition = UILabel(text: "21", color: AppColor.appBlack, font: Barlow.condensedLight, size: 24, alignment: .center)
    let exhibitionsLabel = UILabel(text: "Exhibitions", color: AppColor.appBlack, font: Barlow.condensedLight, size: 18, alignment: .center)
    let line2 = UIView()
    let likeIcon = UIImageView(image: #imageLiteral(resourceName: "fill1Copy20"))
    let likes = UILabel(text: "120", color: AppColor.appBlack, font: Barlow.extraLight, size: 18)
    let forwardIcon = UIImageView(image: #imageLiteral(resourceName: "fill1Copy45"))
    let forwards = UILabel(text: "43K", color: AppColor.appBlack, font: Barlow.extraLight, size: 18)
    let shareIcon = UIImageView(image: #imageLiteral(resourceName: "group3Copy18"))
    let shares = UILabel(text: "2.3K", color: AppColor.appBlack, font: Barlow.extraLight, size: 18)
    let color1 = UIView()
    let color2 = UIView()
    let color3 = UIView()
    let color4 = UIView()
    let color5 = UIView()
    let pallette = UILabel(text: "pallette", color: AppColor.appWhite, font: Barlow.condensedMedium, size: 14)
    let uploads = GPButton(title: "Uploads", icon: #imageLiteral(resourceName: "group10Copy"), color: AppColor.appBlack)
    let exhibitions = GPButton(title: "Exhibitions", icon: #imageLiteral(resourceName: "group6Copy_2"), color: AppColor.warmGrey)
    let revenue = GPButton(title: "Revenue", icon: #imageLiteral(resourceName: "group3Copy-1"), color: AppColor.warmGrey)
    let line3 = UIView()
    let collectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.backgroundColor = AppColor.appWhite
        return collection
    }()
    
    lazy var headerStack = HorizontalStackView(arrangedSubViews: [logoShort, profileButton, addIcon, menuIcon], spacing: 30, distribution: .fillProportionally)
    lazy var profileStack = VerticalStackView(arrangedSubViews: [profilePic, profileName], spacing: 7)
    lazy var followerStack = VerticalStackView(arrangedSubViews: [followers,followersLabel], spacing: 6)
    lazy var artworksStack = VerticalStackView(arrangedSubViews: [artworks,artworksLabel], spacing: 6)
    lazy var exhibitionStack = VerticalStackView(arrangedSubViews: [exhibition,exhibitionsLabel], spacing: 6)
    lazy var descriptionStack = HorizontalStackView(arrangedSubViews: [followerStack, artworksStack, exhibitionStack], spacing: 60)
    lazy var reachStack = HorizontalStackView(arrangedSubViews: [likeIcon, likes, forwardIcon, forwards, shareIcon, shares], spacing: 5, distribution: .fillProportionally)
    lazy var palletteStack = HorizontalStackView(arrangedSubViews: [color1, color2, color3, color4, color5], spacing: 0, distribution: .fillEqually)
    lazy var buttonStack = HorizontalStackView(arrangedSubViews: [uploads, exhibitions, revenue], spacing: 115)
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = AppColor.appWhite
        setupScrollView()
        setupHeader()
        setupBody()
    }
    
    private func setupScrollView() {
        addSubview(scrollView)
        scrollView.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: safeAreaLayoutGuide.trailingAnchor)

        scrollView.addSubview(contentView)
        contentView.anchor(top: scrollView.topAnchor, leading: scrollView.leadingAnchor, bottom: scrollView.bottomAnchor, trailing: scrollView.trailingAnchor)
        contentView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
    }
    
    private func setupHeader() {
        contentView.addSubview(headerStack)
        headerStack.anchor(top: contentView.topAnchor, leading: contentView.leadingAnchor, bottom: nil, trailing: contentView.trailingAnchor, padding: .init(top: 27, left: 24, bottom: 0, right: 24))
        profileButton.backgroundColor = AppColor.primary
        profileButton.constraintHeight(constant: 33)
        profileButton.constraintWidth(constant: 33)
        profileButton.layer.cornerRadius = 16.5
        profileButton.addSubview(profileIcon)
        profileIcon.anchor(top: profileButton.topAnchor, leading: profileButton.leadingAnchor, bottom: profileButton.bottomAnchor, trailing: profileButton.trailingAnchor, padding: .init(top: 6, left: 8, bottom: 8, right: 7))
        headerStack.setCustomSpacing(100, after: logoShort)
        
        contentView.addSubview(profileStack)
        profileStack.anchor(top: headerStack.bottomAnchor, leading: nil, bottom: nil, trailing: nil, padding: .init(top: 30, left: 0, bottom: 0, right: 0))
        profileStack.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        
        contentView.addSubview(upload)
        upload.anchor(top: nil, leading: nil, bottom: nil, trailing: profileStack.leadingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 44))
        upload.centerYAnchor.constraint(equalTo: profileStack.centerYAnchor, constant: -35).isActive = true
        upload.titleLabel?.font = UIFont.font(with: 14, family: Barlow.condensedLight)
        
        contentView.addSubview(edit)
        edit.anchor(top: nil, leading: profileStack.trailingAnchor, bottom: nil, trailing: nil, padding: .init(top: 0, left: 44, bottom: 0, right: 0))
        edit.centerYAnchor.constraint(equalTo: profileStack.centerYAnchor, constant: -35).isActive = true
        edit.titleLabel?.font = UIFont.font(with: 14, family: Barlow.condensedLight)
        
        contentView.addSubview(myDashboard)
        myDashboard.anchor(top: profileStack.bottomAnchor, leading: contentView.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 25, left: 30, bottom: 0, right: 0))
        
        contentView.addSubview(switchButton)
        switchButton.anchor(top: nil, leading: nil, bottom: nil, trailing: contentView.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 30))
        switchButton.centerYAnchor.constraint(equalTo: myDashboard.centerYAnchor).isActive = true
        switchButton.isOn = true
    }
    
    private func setupBody() {
        contentView.addSubview(line1)
        line1.anchor(top: myDashboard.bottomAnchor, leading: contentView.leadingAnchor, bottom: nil, trailing: contentView.trailingAnchor, padding: .init(top: 14, left: 20, bottom: 0, right: 23))
        line1.backgroundColor = AppColor.greyWhite
        line1.constraintHeight(constant: 2)
        
        contentView.addSubview(descriptionStack)
        descriptionStack.anchor(top: line1.bottomAnchor, leading: nil, bottom: nil, trailing: nil, padding: .init(top: 9, left: 0, bottom: 0, right: 0))
        descriptionStack.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        
        contentView.addSubview(line2)
        line2.anchor(top: descriptionStack.bottomAnchor, leading: contentView.leadingAnchor, bottom: nil, trailing: contentView.trailingAnchor, padding: .init(top: 11, left: 20, bottom: 0, right: 23))
        line2.backgroundColor = AppColor.greyWhite
        line2.constraintHeight(constant: 2)
        
        contentView.addSubview(reachStack)
        reachStack.anchor(top: line2.bottomAnchor, leading: contentView.leadingAnchor, bottom: nil, trailing: contentView.trailingAnchor, padding: .init(top: 18, left: 80, bottom: 0, right: 80))
        reachStack.setCustomSpacing(10, after: likes)
        reachStack.setCustomSpacing(10, after: forwards)
    
        contentView.addSubview(palletteStack)
        palletteStack.anchor(top: reachStack.bottomAnchor, leading: nil, bottom: nil, trailing: nil, padding: .init(top: 19, left: 0, bottom: 0, right: 0))
        palletteStack.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        color1.constraintHeight(constant: 42)
        color1.constraintWidth(constant: 75)
        color1.backgroundColor = #colorLiteral(red: 0.5921568627, green: 0.2666666667, blue: 0.5607843137, alpha: 1)
        color2.backgroundColor = #colorLiteral(red: 0.7770348065, green: 0, blue: 0.2039215686, alpha: 1)
        color3.backgroundColor = #colorLiteral(red: 0.8864455857, green: 0, blue: 0, alpha: 1)
        color4.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        color5.backgroundColor = #colorLiteral(red: 1, green: 0.7098039216, blue: 0, alpha: 1)
        color1.addSubview(pallette)
        pallette.centerYAnchor.constraint(equalTo: color1.centerYAnchor).isActive = true
        pallette.anchor(top: nil, leading: color1.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 0, left: 10, bottom: 0, right: 0))
        
        contentView.addSubview(buttonStack)
        buttonStack.anchor(top: palletteStack.bottomAnchor, leading: nil, bottom: nil, trailing: nil, padding: .init(top: 20, left: 0, bottom: 0, right: 0))
        buttonStack.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        
        contentView.addSubview(line3)
        line3.anchor(top: buttonStack.bottomAnchor, leading: uploads.buttonTitle.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 28, left: -6.5, bottom: 0, right: 0))
        line3.constraintWidth(constant: 65)
        line3.backgroundColor = #colorLiteral(red: 1, green: 0.7098039216, blue: 0, alpha: 1)
        line3.constraintHeight(constant: 2)
        
        contentView.addSubview(collectionView)
        collectionView.anchor(top: line3.bottomAnchor, leading: contentView.leadingAnchor, bottom: contentView.bottomAnchor, trailing: contentView.trailingAnchor, padding: .init(top: 21, left: 18, bottom: 0, right: 18))
        collectionView.constraintHeight(constant: 550)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
