//
//  RegisterView.swift
//  TheGallaryProject
//
//  Created by Shreeya Maskey on 8/27/21.
//

import UIKit

class RegisterView: UIView {
    
    var onRegisterClicked : (() -> Void)?
    
    let scrollView = UIScrollView()
    let contentView = UIView()
    
    let logo = UIImageView(image: #imageLiteral(resourceName: "combinedShape-1"), contentMode: .scaleAspectFit, clipsToBounds: false)
    let mainImage = UIImageView(image: #imageLiteral(resourceName: "main"), contentMode: .scaleAspectFill, clipsToBounds: true)
    let subHeading = UILabel(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit", color: AppColor.appBlack, font: Barlow.extraLight, size: 16, numberOfLines: 0, alignment: .center)
    let registerButton = UIButton(title: "register", titleColor: AppColor.appWhite, backgroundColor: AppColor.primary, font: Barlow.condensedExtraLight, fontSize: 32, cornerRadius: 9)
    let arrow = UIImageView(image: #imageLiteral(resourceName: "group3Copy"))
    let buttonSideText = UILabel(text: "me as a collector", color: AppColor.appBlack, font: Barlow.condensedExtraLight, size: 32)
    let blueArrow = UIImageView(image: #imageLiteral(resourceName: "group3Copy").withTintColor(AppColor.appBlue))
    let trackLabel = UIButton(title: "track my application", titleColor: AppColor.appBlue, font: Barlow.condensedExtraLight, fontSize: 24)
    let firstView = DetailView(icon: #imageLiteral(resourceName: "group"), title: "lorem ipsum \ris used", detail: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.")
    let secondView = DetailView(icon: #imageLiteral(resourceName: "group2"), title: "lorem ipsum \ris used", detail: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.")
    let thirdView = DetailView(icon: #imageLiteral(resourceName: "group4"), title: "lorem ipsum \ris used", detail: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.")
    let fourthView = DetailView(icon: #imageLiteral(resourceName: "group14Copy2"), title: "lorem ipsum \ris used", detail: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.")
    let fifthView = DetailView(icon: #imageLiteral(resourceName: "group7"), title: "lorem ipsum \ris used", detail: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.")
    let sixthView = DetailView(icon: #imageLiteral(resourceName: "group10"), title: "lorem ipsum \ris used", detail: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.")
    let seventhView = DetailView(icon: #imageLiteral(resourceName: "group14"), title: "lorem ipsum \ris used", detail: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.")
    let eightView = DetailView(icon: #imageLiteral(resourceName: "group15"), title: "lorem ipsum\ris used", detail: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.")
    let facebookIcon = UIButton(buttonImage: #imageLiteral(resourceName: "bitmapCopy10"))
    let instagramIcon = UIButton(buttonImage: #imageLiteral(resourceName: "bitmapCopy11"))
    let line1 = UIView()
    let logoLine = UIImageView(image: #imageLiteral(resourceName: "combinedShape"), contentMode: .scaleAspectFit, clipsToBounds: false)
    let aboutUs = UILabel(text: "About Us.", color: AppColor.appBlack, font: Barlow.condensedMedium, size: 16, alignment: .left)
    let team = UILabel(text: "Team.", color: AppColor.appBlack, font: Barlow.condensedMedium, size: 16, alignment: .left)
    let reachUs = UILabel(text: "Reach Us.", color: AppColor.appBlack, font: Barlow.condensedMedium, size: 16, alignment: .left)
    let affiliattions = UILabel(text: "Affiliattions.", color: AppColor.appBlack, font: Barlow.condensedMedium, size: 16, alignment: .left)
    let disclaimers = UILabel(text: "Disclaimers.", color: AppColor.appBlack, font: Barlow.condensedMedium, size: 16, alignment: .left)
    let privacyPolicy = UILabel(text: "Privacy Policy.", color: AppColor.appBlack, font: Barlow.condensedMedium, size: 16, alignment: .left)
    let line2 = UIView()
    let copyrightIcon = UIImageView(image: #imageLiteral(resourceName: "invalidName"), contentMode: .scaleAspectFit, clipsToBounds: false)
    let copyrightText = UILabel(text: " Content Copyright reserved.", color: AppColor.appBlack, font: Barlow.condensedLight, size: 16)
    
    lazy var buttonStack = HorizontalStackView(arrangedSubViews: [registerButton, buttonSideText], spacing: 5)
    lazy var trackStack = HorizontalStackView(arrangedSubViews: [blueArrow, trackLabel], spacing: 5)
    lazy var detailStack = VerticalStackView(arrangedSubViews: [firstView, secondView, thirdView, fourthView, fifthView, sixthView, seventhView, eightView], spacing: 40)
    lazy var socialMediaStack = HorizontalStackView(arrangedSubViews: [facebookIcon, instagramIcon], spacing: 5)
    lazy var leftFooterStack = VerticalStackView(arrangedSubViews: [aboutUs, team, reachUs], spacing: 40, distribution: .fillEqually)
    lazy var rightFooterStack = VerticalStackView(arrangedSubViews: [affiliattions, disclaimers, privacyPolicy], spacing: 40, distribution: .fillEqually)
    lazy var footerStack = HorizontalStackView(arrangedSubViews: [leftFooterStack, rightFooterStack], spacing: 70, distribution: .fillEqually)
    lazy var copyrightStack = HorizontalStackView(arrangedSubViews: [copyrightIcon, copyrightText], spacing: 5)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = AppColor.appWhite
        setupScrollView()
        setupUI()
        setupFooter()
    }
    
    private func setupScrollView() {
        addSubview(scrollView)
        scrollView.anchor(top: safeAreaLayoutGuide.topAnchor, leading: safeAreaLayoutGuide.leadingAnchor, bottom: safeAreaLayoutGuide.bottomAnchor, trailing: safeAreaLayoutGuide.trailingAnchor)

        scrollView.addSubview(contentView)
        contentView.anchor(top: scrollView.topAnchor, leading: scrollView.leadingAnchor, bottom: scrollView.bottomAnchor, trailing: scrollView.trailingAnchor)
        contentView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
    }
    
    private func setupUI() {
        contentView.addSubview(logo)
        logo.anchor(top: contentView.topAnchor, leading: contentView.leadingAnchor, bottom: nil , trailing: nil, padding: .init(top: 31, left: 24, bottom: 0, right: 0))
        
        contentView.addSubview(mainImage)
        mainImage.anchor(top: logo.bottomAnchor, leading: contentView.leadingAnchor, bottom: nil, trailing: contentView.trailingAnchor, padding: .init(top: 7, left: -50, bottom: 0, right: -120))
        
        contentView.addSubview(subHeading)
        subHeading.anchor(top: mainImage.bottomAnchor, leading: contentView.leadingAnchor, bottom: nil, trailing: contentView.trailingAnchor, padding: .init(top: 33, left: 36, bottom: 0, right: 50))
        
        registerButton.addTarget(self, action: #selector(handleRegister), for: .touchUpInside)
        contentView.addSubview(buttonStack)
        buttonStack.anchor(top: subHeading.bottomAnchor, leading: nil, bottom: nil, trailing: nil, padding: .init(top: 30, left: 0, bottom: 0, right: 0))
        buttonStack.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        registerButton.addSubview(arrow)
        arrow.anchor(top: nil, leading: registerButton.leadingAnchor, bottom: nil, trailing: nil, padding: .init(top: 0, left: 10, bottom: 0, right: 0))
        arrow.centerYAnchor.constraint(equalTo: registerButton.centerYAnchor).isActive = true
        registerButton.contentEdgeInsets = UIEdgeInsets(top: 0, left: 34, bottom: 6, right: 10)
        
        contentView.addSubview(trackStack)
        trackStack.anchor(top: buttonStack.bottomAnchor, leading: nil, bottom: nil, trailing: nil, padding: .init(top: 30, left: 0, bottom: 0, right: 0))
        trackStack.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        blueArrow.constraintHeight(constant: 11)
        blueArrow.constraintWidth(constant: 12)
        
        contentView.addSubview(detailStack)
        detailStack.anchor(top: trackStack.bottomAnchor, leading: contentView.leadingAnchor, bottom: nil, trailing: contentView.trailingAnchor, padding: .init(top: 50, left: 36, bottom: 0, right: 29))
    }
    
    private func setupFooter() {
        contentView.addSubview(socialMediaStack)
        socialMediaStack.anchor(top: detailStack.bottomAnchor, leading: nil, bottom: nil, trailing: nil, padding: .init(top: 70, left: 0, bottom: 0, right: 0))
        socialMediaStack.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        
        contentView.addSubview(line1)
        line1.anchor(top: socialMediaStack.bottomAnchor, leading: contentView.leadingAnchor, bottom: nil, trailing: contentView.trailingAnchor, padding: .init(top: 22, left: 30, bottom: 0, right: 30))
        line1.backgroundColor = AppColor.greyWhite
        line1.constraintHeight(constant: 2)
        
        contentView.addSubview(logoLine)
        logoLine.anchor(top: line1.bottomAnchor, leading: nil, bottom: nil, trailing: nil, padding: .init(top: 23, left: 0, bottom: 0, right: 0))
        logoLine.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        
        contentView.addSubview(footerStack)
        footerStack.anchor(top: logoLine.bottomAnchor, leading: nil, bottom: nil, trailing: nil, padding: .init(top: 18, left: 0, bottom: 0, right: 0))
        footerStack.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        
        contentView.addSubview(line2)
        line2.anchor(top: footerStack.bottomAnchor, leading: contentView.leadingAnchor, bottom: nil, trailing: contentView.trailingAnchor, padding: .init(top: 22, left: 30, bottom: 0, right: 30))
        line2.backgroundColor = AppColor.greyWhite
        line2.constraintHeight(constant: 2)
        
        contentView.addSubview(copyrightStack)
        copyrightStack.anchor(top: line2.bottomAnchor, leading: nil, bottom: contentView.bottomAnchor, trailing: nil, padding: .init(top: 23, left: 0, bottom: 10, right: 0))
        copyrightStack.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
    }
    
    @objc func handleRegister(){
        onRegisterClicked?()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
