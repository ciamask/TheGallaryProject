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
    }
    
    let currentView = RegisterView()
    
    override func loadView() {
        view = currentView
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
}
