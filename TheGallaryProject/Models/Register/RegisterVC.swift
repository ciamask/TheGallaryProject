//
//  RegisterVC.swift
//  TheGallaryProject
//
//  Created by Shreeya Maskey on 8/27/21.
//

import UIKit

class RegisterVC: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        observeEvents()
    }
    
    let currentView = RegisterView()
    
    override func loadView() {
        view = currentView
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    private func observeEvents() {
        currentView.onRegisterClicked = { [weak self] in
            guard let self = self else { return }
            self.gotoProfileVC()
        }
    }
    
    private func gotoProfileVC() {
        let profileVC = ProfileVC()
        navigationController?.pushViewController(profileVC, animated: true)
    }
    
}
