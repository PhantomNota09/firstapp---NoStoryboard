//
//  ViewController.swift
//  firstapp
//
//  Created by Surya Rayala on 1/14/26.
//

import UIKit

class LoginVC: UIViewController {
    
    var LoginPageLbl: UILabel?
    var UserNameTF: UITextField?
    var PasswordTF: UITextField?
    var ForgetPasswordBtn: UIButton?
    var LoginBtn: UIButton?
    var SignUpBtn: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .yellow
        
        setupLoginLabel()
        setupUserNameTextField()
        setupPasswordTextField()
        setupForgotPasswordButton()
        setupLoginButton()
        setupSignUpButton()
    }
    
    private func setupLoginLabel() {
        LoginPageLbl = UILabel()
        LoginPageLbl?.text = "Login Page"
        LoginPageLbl?.textColor = .black
        LoginPageLbl?.font = UIFont.systemFont(ofSize: 30)
        LoginPageLbl?.textAlignment = .center
        LoginPageLbl?.translatesAutoresizingMaskIntoConstraints = false
        LoginPageLbl?.numberOfLines = 0
        
        if let LoginPageLbl = LoginPageLbl {
            view.addSubview(LoginPageLbl)
            NSLayoutConstraint.activate([
                LoginPageLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                LoginPageLbl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 150),
                LoginPageLbl.leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: 20),
                LoginPageLbl.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -20)
            ])
        }
    }
    
    private func setupUserNameTextField() {
        UserNameTF = UITextField()
        UserNameTF?.placeholder = " Enter User Name"
        UserNameTF?.borderStyle = .line
        UserNameTF?.translatesAutoresizingMaskIntoConstraints = false
        UserNameTF?.font = UIFont.systemFont(ofSize: 22)
        UserNameTF?.textAlignment = .left
        
        if let UserNameTF = UserNameTF, let LoginPageLbl = LoginPageLbl {
            view.addSubview(UserNameTF)
            NSLayoutConstraint.activate([
                UserNameTF.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                UserNameTF.topAnchor.constraint(equalTo: LoginPageLbl.bottomAnchor, constant: 60),
                UserNameTF.widthAnchor.constraint(equalToConstant: 300),
                UserNameTF.widthAnchor.constraint(lessThanOrEqualTo: view.widthAnchor, constant: -40),
                UserNameTF.heightAnchor.constraint(equalToConstant: 40)
            ])
        }
    }
    
    private func setupPasswordTextField() {
        PasswordTF = UITextField()
        PasswordTF?.placeholder = " Enter Password"
        PasswordTF?.borderStyle = .line
        PasswordTF?.translatesAutoresizingMaskIntoConstraints = false
        PasswordTF?.font = UIFont.systemFont(ofSize: 22)
        PasswordTF?.textAlignment = .left
        PasswordTF?.isSecureTextEntry = true
        
        if let PasswordTF = PasswordTF, let UserNameTF = UserNameTF {
            view.addSubview(PasswordTF)
            NSLayoutConstraint.activate([
                PasswordTF.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                PasswordTF.topAnchor.constraint(equalTo: UserNameTF.bottomAnchor, constant: 20),
                PasswordTF.widthAnchor.constraint(equalTo: UserNameTF.widthAnchor),
                PasswordTF.heightAnchor.constraint(equalToConstant: 40)
            ])
        }
    }
    
    private func setupForgotPasswordButton() {
        ForgetPasswordBtn = UIButton()
        ForgetPasswordBtn?.setTitle("Forgot Password?", for: .normal)
        ForgetPasswordBtn?.setTitleColor(.systemBlue, for: .normal)
        ForgetPasswordBtn?.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        ForgetPasswordBtn?.contentHorizontalAlignment = .left
        ForgetPasswordBtn?.translatesAutoresizingMaskIntoConstraints = false
        ForgetPasswordBtn?.addTarget(self, action: #selector(forgotButtonTapped), for: .touchUpInside)
        
        if let ForgetPasswordBtn = ForgetPasswordBtn, let PasswordTF = PasswordTF {
            view.addSubview(ForgetPasswordBtn)
            NSLayoutConstraint.activate([
                ForgetPasswordBtn.leadingAnchor.constraint(equalTo: PasswordTF.leadingAnchor),
                ForgetPasswordBtn.topAnchor.constraint(equalTo: PasswordTF.bottomAnchor, constant: 8)
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
        
        if let LoginBtn = LoginBtn, let ForgetPasswordBtn = ForgetPasswordBtn, let UserNameTF = UserNameTF {
            view.addSubview(LoginBtn)
            NSLayoutConstraint.activate([
                LoginBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                LoginBtn.topAnchor.constraint(equalTo: ForgetPasswordBtn.bottomAnchor, constant: 40),
                LoginBtn.widthAnchor.constraint(equalTo: UserNameTF.widthAnchor),
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
        
        if let SignUpBtn = SignUpBtn, let LoginBtn = LoginBtn, let UserNameTF = UserNameTF {
            view.addSubview(SignUpBtn)
            NSLayoutConstraint.activate([
                SignUpBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                SignUpBtn.topAnchor.constraint(equalTo: LoginBtn.bottomAnchor, constant: 20),
                SignUpBtn.widthAnchor.constraint(equalTo: UserNameTF.widthAnchor),
                SignUpBtn.heightAnchor.constraint(equalToConstant: 40)
            ])
        }
    }
    
    @objc private func loginButtonTapped() {
        let homepageVC = HomePage()
        navigationController?.pushViewController(homepageVC, animated: true)
    }
    
    @objc private func signUpButtonTapped() {
        let signUpVC = SignupVC()
        navigationController?.pushViewController(signUpVC, animated: true)
    }
    
    @objc private func forgotButtonTapped() {
        let vc = ForgotPasswordPageVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}
