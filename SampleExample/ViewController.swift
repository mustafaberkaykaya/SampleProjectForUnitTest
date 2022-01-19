//
//  ViewController.swift
//  SampleExample
//
//  Created by Mustafa Berkay Kaya on 19.01.2022.
//

import UIKit
import MobilliumBuilders
import TinyConstraints

class ViewController: UIViewController {
    
    private let mainStackView = UIStackViewBuilder()
        .axis(.vertical)
        .spacing(20)
        .build()
    private let firstTextField = UITextFieldBuilder()
        .borderWidth(0.5)
        .placeholder("Please enter your first number.")
        .build()
    private let secondTextField = UITextFieldBuilder()
        .borderWidth(0.5)
        .placeholder("Please enter your second number.")
        .build()
    private let sumButton = UIButtonBuilder().title("+").build()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addSubViews()
    }

}

extension ViewController {
    private func addSubViews() {
        addMainStackView()
    }
    
    private func addMainStackView() {
        view.addSubview(mainStackView)
        mainStackView.topToSuperview(usingSafeArea: true).constant = 20
        mainStackView.trailingToSuperview().constant = 30
        mainStackView.bottomToSuperview(usingSafeArea: true).constant = -50
        mainStackView.leadingToSuperview().constant = -30
        mainStackView.backgroundColor = .red
        
    }
}
