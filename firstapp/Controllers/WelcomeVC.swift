//
//  WelcomeVC.swift
//  firstapp
//
//  Created by Surya Rayala on 1/27/26.
//

import UIKit

class WelcomeVC: UIViewController {

    var WelcomeLbl: UILabel?
    var AppLogo: UIImageView?
    var LoginBtn: UIButton?
    var SignUpBtn: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        setupWelcomeLabel()
        //setupAppLogo()
        setupLoginButton()
        setupSignUpButton()
    }
    
    private func setupWelcomeLabel() {
        WelcomeLbl = UILabel()
        WelcomeLbl?.text = "Welcome!!"
        WelcomeLbl?.textColor = .label
        WelcomeLbl?.font = UIFont.boldSystemFont(ofSize: 36)
        WelcomeLbl?.textAlignment = .center
        WelcomeLbl?.translatesAutoresizingMaskIntoConstraints = false
        WelcomeLbl?.numberOfLines = 0
        
        if let WelcomeLbl = WelcomeLbl {
            view.addSubview(WelcomeLbl)
            
            NSLayoutConstraint.activate([
                WelcomeLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                WelcomeLbl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 200),
                WelcomeLbl.leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: 20),
                WelcomeLbl.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -20)
            ])
        }
    }
    
    private func setupLoginButton() {
        LoginBtn = UIButton()
        LoginBtn?.setTitle("Log In", for: .normal)
        LoginBtn?.setTitleColor(.black, for: .normal)
        LoginBtn?.titleLabel?.font = UIFont.systemFont(ofSize: 22)
        LoginBtn?.backgroundColor = .lightGray
        LoginBtn?.layer.cornerRadius = 8
        LoginBtn?.clipsToBounds = true
        LoginBtn?.translatesAutoresizingMaskIntoConstraints = false
        LoginBtn?.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        
        if let LoginBtn = LoginBtn, let WelcomeLbl = WelcomeLbl {
            view.addSubview(LoginBtn)
            NSLayoutConstraint.activate([
                LoginBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                LoginBtn.topAnchor.constraint(equalTo: WelcomeLbl.bottomAnchor, constant: 60),
                LoginBtn.widthAnchor.constraint(equalTo: WelcomeLbl.widthAnchor),
                LoginBtn.heightAnchor.constraint(equalToConstant: 40)
            ])
        }
    }
    
    private func setupSignUpButton() {
        SignUpBtn = UIButton()
        SignUpBtn?.setTitle("Sign Up", for: .normal)
        SignUpBtn?.setTitleColor(.white, for: .normal)
        SignUpBtn?.titleLabel?.font = UIFont.systemFont(ofSize: 22)
        SignUpBtn?.backgroundColor = .black
        SignUpBtn?.layer.cornerRadius = 8
        SignUpBtn?.clipsToBounds = true
        SignUpBtn?.translatesAutoresizingMaskIntoConstraints = false
        SignUpBtn?.addTarget(self, action: #selector(signUpButtonTapped), for: .touchUpInside)
        
        if let SignUpBtn = SignUpBtn, let LoginBtn = LoginBtn {
            view.addSubview(SignUpBtn)
            NSLayoutConstraint.activate([
                SignUpBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                SignUpBtn.topAnchor.constraint(equalTo: LoginBtn.bottomAnchor, constant: 20),
                SignUpBtn.widthAnchor.constraint(equalTo: LoginBtn.widthAnchor),
                SignUpBtn.heightAnchor.constraint(equalToConstant: 40)
            ])
        }
    }
    
    @objc private func loginButtonTapped() {
        let vc = LoginVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc private func signUpButtonTapped() {
        let signUpVC = SignupVC()
        navigationController?.pushViewController(signUpVC, animated: true)
    }
}
