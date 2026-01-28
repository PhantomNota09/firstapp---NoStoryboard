//
//  SignupVC.swift
//  firstapp
//
//  Created by Surya Rayala on 1/27/26.
//

import UIKit

class SignupVC: UIViewController {

    var LoginPageLbl: UILabel?
    var FullNameTF: UITextField?
    var EmailTF: UITextField?
    var PasswordTF: UITextField?
    var ConfirmPasswordTF : UITextField?
    var SignUpBtn: UIButton?
    var LoginBtn: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
                
        view.backgroundColor = .white
        
        setupLoginLabel()
        setupNameTextField()
        setupEmailTextField()
        setupPasswordTextField()
        setupConfirmPasswordTextField()
        setupSignUpButton()
        setupLoginButton()
    }
    
    private func setupLoginLabel() {
        LoginPageLbl = UILabel()
        LoginPageLbl?.text = "Sign Up Page!!"
        LoginPageLbl?.textColor = .black
        LoginPageLbl?.font = UIFont.systemFont(ofSize: 30)
        LoginPageLbl?.textAlignment = .center
        LoginPageLbl?.translatesAutoresizingMaskIntoConstraints = false
        LoginPageLbl?.numberOfLines = 0
        
        if let LoginPageLbl = LoginPageLbl {
            view.addSubview(LoginPageLbl)
            NSLayoutConstraint.activate([
                LoginPageLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                LoginPageLbl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120),
                LoginPageLbl.leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: 20),
                LoginPageLbl.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -20)
            ])
        }
    }
    
    private func setupNameTextField() {
        FullNameTF = UITextField()
        FullNameTF?.placeholder = " Enter Full Name"
        FullNameTF?.borderStyle = .line
        FullNameTF?.translatesAutoresizingMaskIntoConstraints = false
        FullNameTF?.font = UIFont.systemFont(ofSize: 22)
        FullNameTF?.textAlignment = .left
        
        if let FullNameTF = FullNameTF, let LoginPageLbl = LoginPageLbl {
            view.addSubview(FullNameTF)
            NSLayoutConstraint.activate([
                FullNameTF.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                FullNameTF.topAnchor.constraint(equalTo: LoginPageLbl.bottomAnchor, constant: 60),
                FullNameTF.widthAnchor.constraint(equalToConstant: 300),
                FullNameTF.widthAnchor.constraint(lessThanOrEqualTo: view.widthAnchor, constant: -40),
                FullNameTF.heightAnchor.constraint(equalToConstant: 40)
            ])
        }
    }
    
    private func setupEmailTextField() {
        EmailTF = UITextField()
        EmailTF?.placeholder = " Enter Email"
        EmailTF?.borderStyle = .line
        EmailTF?.translatesAutoresizingMaskIntoConstraints = false
        EmailTF?.font = UIFont.systemFont(ofSize: 22)
        EmailTF?.textAlignment = .left
        
        if let EmailTF = EmailTF, let FullNameTF = FullNameTF {
            view.addSubview(EmailTF)
            NSLayoutConstraint.activate([
                EmailTF.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                EmailTF.topAnchor.constraint(equalTo: FullNameTF.bottomAnchor, constant: 20),
                EmailTF.widthAnchor.constraint(equalToConstant: 300),
                EmailTF.widthAnchor.constraint(lessThanOrEqualTo: view.widthAnchor, constant: -40),
                EmailTF.heightAnchor.constraint(equalToConstant: 40)
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
        
        if let PasswordTF = PasswordTF, let EmailTF = EmailTF {
            view.addSubview(PasswordTF)
            NSLayoutConstraint.activate([
                PasswordTF.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                PasswordTF.topAnchor.constraint(equalTo: EmailTF.bottomAnchor, constant: 20),
                PasswordTF.widthAnchor.constraint(equalTo: EmailTF.widthAnchor),
                PasswordTF.heightAnchor.constraint(equalToConstant: 40)
            ])
        }
    }
    
    
    private func setupConfirmPasswordTextField() {
        ConfirmPasswordTF = UITextField()
        ConfirmPasswordTF?.placeholder = " Confirm Password"
        ConfirmPasswordTF?.borderStyle = .line
        ConfirmPasswordTF?.translatesAutoresizingMaskIntoConstraints = false
        ConfirmPasswordTF?.font = UIFont.systemFont(ofSize: 22)
        ConfirmPasswordTF?.textAlignment = .left
        ConfirmPasswordTF?.isSecureTextEntry = true
        
        if let ConfirmPasswordTF = ConfirmPasswordTF, let PasswordTF = PasswordTF {
            view.addSubview(ConfirmPasswordTF)
            NSLayoutConstraint.activate([
                ConfirmPasswordTF.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                ConfirmPasswordTF.topAnchor.constraint(equalTo: PasswordTF.bottomAnchor, constant: 20),
                ConfirmPasswordTF.widthAnchor.constraint(equalTo: PasswordTF.widthAnchor),
                ConfirmPasswordTF.heightAnchor.constraint(equalToConstant: 40)
            ])
        }
    }

    /*
     
     private func setupForgotPasswordButton() {
        ForgetPasswordBtn = UIButton()
        ForgetPasswordBtn?.setTitle("Forgot Password?", for: .normal)
        ForgetPasswordBtn?.setTitleColor(.systemBlue, for: .normal)
        ForgetPasswordBtn?.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        ForgetPasswordBtn?.contentHorizontalAlignment = .left
        ForgetPasswordBtn?.translatesAutoresizingMaskIntoConstraints = false
        
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
        
        if let LoginBtn = LoginBtn, let ConfirmPasswordTF = ConfirmPasswordTF, let NameTF = FullNameTF {
            view.addSubview(LoginBtn)
            NSLayoutConstraint.activate([
                LoginBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                LoginBtn.topAnchor.constraint(equalTo: ConfirmPasswordTF.bottomAnchor, constant: 40),
                LoginBtn.widthAnchor.constraint(equalTo: NameTF.widthAnchor),
                LoginBtn.heightAnchor.constraint(equalToConstant: 40)
            ])
        }
    }
     
    */

    
    private func setupSignUpButton() {
        SignUpBtn = UIButton()
        SignUpBtn?.setTitle("Sign Up", for: .normal)
        SignUpBtn?.setTitleColor(.white, for: .normal)
        SignUpBtn?.titleLabel?.font = UIFont.systemFont(ofSize: 22)
        SignUpBtn?.backgroundColor = .black
        SignUpBtn?.layer.cornerRadius = 8
        SignUpBtn?.clipsToBounds = true
        SignUpBtn?.translatesAutoresizingMaskIntoConstraints = false
        
        if let SignUpBtn = SignUpBtn, let ConfirmPasswordTF = ConfirmPasswordTF, let NameTF = FullNameTF {
            view.addSubview(SignUpBtn)
            NSLayoutConstraint.activate([
                SignUpBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                SignUpBtn.topAnchor.constraint(equalTo: ConfirmPasswordTF.bottomAnchor, constant: 20),
                SignUpBtn.widthAnchor.constraint(equalTo: NameTF.widthAnchor),
                SignUpBtn.heightAnchor.constraint(equalToConstant: 40)
            ])
        }
    }
    
    private func setupLoginButton() {
        LoginBtn = UIButton()
        LoginBtn?.setTitle("Already have an account? Login", for: .normal)
        LoginBtn?.setTitleColor(.systemBlue, for: .normal)
        LoginBtn?.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        LoginBtn?.contentHorizontalAlignment = .center
        LoginBtn?.translatesAutoresizingMaskIntoConstraints = false
        LoginBtn?.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        
        if let LoginBtn = LoginBtn, let SignUpBtn = SignUpBtn {
            view.addSubview(LoginBtn)
            NSLayoutConstraint.activate([
                LoginBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                LoginBtn.leadingAnchor.constraint(equalTo: SignUpBtn.leadingAnchor),
                LoginBtn.topAnchor.constraint(equalTo: SignUpBtn.bottomAnchor, constant: 20)
            ])
        }
    }
    
    @objc private func loginButtonTapped() {
        let vc = LoginVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}
