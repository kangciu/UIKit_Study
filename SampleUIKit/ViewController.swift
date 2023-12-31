//
//  ViewController.swift
//  SampleUIKit
//
//  Created by 강치우 on 10/28/23.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var myNameTextLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false // 우리가 이제 오토레이아웃을 코드로 쓸거다 라고 코드로 적는 부분
        label.text = "강치우"
        label.textAlignment = .center
        label.backgroundColor = .green
        return label
    }()
    
    lazy var ChangeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false // 우리가 이제 오토레이아웃을 코드로 쓸거다 라고 코드로 적는 부분
        button.setTitle("안녕하세요", for: .normal)
        button.backgroundColor = .blue
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange // 배경 색
        
        view.addSubview(myNameTextLabel)
        myNameTextLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        myNameTextLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        myNameTextLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        myNameTextLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(ChangeButton)
        ChangeButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        ChangeButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        ChangeButton.topAnchor.constraint(equalTo: myNameTextLabel.bottomAnchor, constant: 200).isActive = true
        ChangeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        ChangeButton.addTarget(self, action: #selector(didTapChangeNameButton), for: .touchUpInside)
    }
    
    @objc func didTapChangeNameButton() {
        myNameTextLabel.text = "안녕하세용가리"
    }
}
