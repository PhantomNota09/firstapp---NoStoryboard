//
//  ForgotPasswordPageVC.swift
//  firstapp
//
//  Created by Surya Rayala on 1/27/26.
//

import UIKit

class ForgotPasswordPageVC: UIViewController {

    var ResetPasswordLbl: UILabel?
    var EmailTF: UITextField?
    var ResetBtn: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
                
        view.backgroundColor = .white
        
        setupResetPasswordLabel()
        setupEmailTextField()
        setupResetButton()
    }
    
    private func setupResetPasswordLabel() {
        ResetPasswordLbl = UILabel()
        ResetPasswordLbl?.text = "Reset Password"
        ResetPasswordLbl?.textColor = .black
        ResetPasswordLbl?.font = UIFont.systemFont(ofSize: 30)
        ResetPasswordLbl?.textAlignment = .center
        ResetPasswordLbl?.translatesAutoresizingMaskIntoConstraints = false
        ResetPasswordLbl?.numberOfLines = 0
        
        if let ResetPasswordLbl = ResetPasswordLbl {
            view.addSubview(ResetPasswordLbl)
            NSLayoutConstraint.activate([
                ResetPasswordLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                ResetPasswordLbl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 150),
                ResetPasswordLbl.leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: 20),
                ResetPasswordLbl.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -20)
            ])
        }
    }
    
    private func setupEmailTextField() {
        EmailTF = UITextField()
        EmailTF?.placeholder = " Enter your Email Adress"
        EmailTF?.borderStyle = .line
        EmailTF?.translatesAutoresizingMaskIntoConstraints = false
        EmailTF?.font = UIFont.systemFont(ofSize: 22)
        EmailTF?.textAlignment = .left
        
        if let EmailTF = EmailTF, let ResetPasswordLbl = ResetPasswordLbl {
            view.addSubview(EmailTF)
            NSLayoutConstraint.activate([
                EmailTF.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                EmailTF.topAnchor.constraint(equalTo: ResetPasswordLbl.bottomAnchor, constant: 60),
                EmailTF.widthAnchor.constraint(equalToConstant: 300),
                EmailTF.widthAnchor.constraint(lessThanOrEqualTo: view.widthAnchor, constant: -40),
                EmailTF.heightAnchor.constraint(equalToConstant: 40)
            ])
        }
    }
    
    private func setupResetButton() {
        ResetBtn = UIButton()
        ResetBtn?.setTitle("Sign Up", for: .normal)
        ResetBtn?.setTitleColor(.white, for: .normal)
        ResetBtn?.titleLabel?.font = UIFont.systemFont(ofSize: 22)
        ResetBtn?.backgroundColor = .black
        ResetBtn?.layer.cornerRadius = 8
        ResetBtn?.clipsToBounds = true
        ResetBtn?.translatesAutoresizingMaskIntoConstraints = false
        ResetBtn?.addTarget(self, action: #selector(resetButtonTapped), for: .touchUpInside)
        
        if let ResetBtn = ResetBtn, let EmailTF = EmailTF {
            view.addSubview(ResetBtn)
            NSLayoutConstraint.activate([
                ResetBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                ResetBtn.topAnchor.constraint(equalTo: EmailTF.bottomAnchor, constant: 40),
                ResetBtn.widthAnchor.constraint(equalTo: EmailTF.widthAnchor),
                ResetBtn.heightAnchor.constraint(equalToConstant: 40)
            ])
        }
    }
    
    @objc private func resetButtonTapped() {
        let loginVC = LoginVC()
        navigationController?.pushViewController(loginVC, animated: true)
    }
}
