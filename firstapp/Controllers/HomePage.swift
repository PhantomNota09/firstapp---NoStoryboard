//
//  HomePage.swift
//  firstapp
//
//  Created by Surya Rayala on 1/27/26.
//

import UIKit

class HomePage: UIViewController {
    
    var HomeLbl: UILabel?
    var EmailTF: UITextField?
    var SignoutBtn: UIButton?
    var tableView: UITableView?
    
    let numbers = Array(1...10)

    override func viewDidLoad() {
        super.viewDidLoad()
                
        view.backgroundColor = .white
        
        setupHomeLabel()
        setupTableView()
        setupSignoutButton()
    }
    
    private func setupHomeLabel() {
        HomeLbl = UILabel()
        HomeLbl?.text = "Table 1 to 10"
        HomeLbl?.textColor = .black
        HomeLbl?.font = UIFont.systemFont(ofSize: 30)
        HomeLbl?.textAlignment = .center
        HomeLbl?.translatesAutoresizingMaskIntoConstraints = false
        HomeLbl?.numberOfLines = 0
        
        if let HomeLbl = HomeLbl {
            view.addSubview(HomeLbl)
            NSLayoutConstraint.activate([
                HomeLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                HomeLbl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
                HomeLbl.leadingAnchor.constraint(greaterThanOrEqualTo: view.leadingAnchor, constant: 20),
                HomeLbl.trailingAnchor.constraint(lessThanOrEqualTo: view.trailingAnchor, constant: -20)
            ])
        }
    }
    
    private func setupTableView() {
        tableView = UITableView()
        tableView?.delegate = self
        tableView?.dataSource = self
        tableView?.register(NumberCell.self, forCellReuseIdentifier: "NumberCell")
        tableView?.translatesAutoresizingMaskIntoConstraints = false
        tableView?.backgroundColor = .white
        
        if let tableView = tableView, let HomeLbl = HomeLbl {
            view.addSubview(tableView)
            NSLayoutConstraint.activate([
                tableView.topAnchor.constraint(equalTo: HomeLbl.bottomAnchor, constant: 20),
                tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -80)
            ])
        }
    }
        
    private func setupSignoutButton() {
        SignoutBtn = UIButton()
        SignoutBtn?.setTitle("Sign Out", for: .normal)
        SignoutBtn?.backgroundColor = .systemBlue
        SignoutBtn?.setTitleColor(.white, for: .normal)
        SignoutBtn?.setTitleColor(.black, for: .highlighted)
        SignoutBtn?.titleLabel?.font = UIFont.systemFont(ofSize: 22)
        SignoutBtn?.layer.cornerRadius = 8
        SignoutBtn?.clipsToBounds = true
        SignoutBtn?.translatesAutoresizingMaskIntoConstraints = false
        SignoutBtn?.addTarget(self, action: #selector(signoutButtonTapped), for: .touchUpInside)
        
        if let SignoutBtn = SignoutBtn {
            view.addSubview(SignoutBtn)
            NSLayoutConstraint.activate([
                SignoutBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                SignoutBtn.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
                SignoutBtn.widthAnchor.constraint(equalToConstant: 150),
                SignoutBtn.heightAnchor.constraint(equalToConstant: 50)
            ])
        }
    }
    
    @objc private func signoutButtonTapped() {
        let vc = WelcomeVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}

extension HomePage: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NumberCell", for: indexPath) as? NumberCell else {
            return UITableViewCell()
        }
        
        cell.configure(with: numbers[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}

class NumberCell: UITableViewCell {
    
    private let numberLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 24, weight: .medium)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        contentView.addSubview(numberLabel)
        
        NSLayoutConstraint.activate([
            numberLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            numberLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            numberLabel.leadingAnchor.constraint(greaterThanOrEqualTo: contentView.leadingAnchor, constant: 16),
            numberLabel.trailingAnchor.constraint(lessThanOrEqualTo: contentView.trailingAnchor, constant: -16)
        ])
    }
    
    func configure(with number: Int) {
        numberLabel.text = "\(number)"
    }
}
