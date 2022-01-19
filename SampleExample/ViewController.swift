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
        .alignment(.center)
        .build()
    private let buttonStackView = UIStackViewBuilder()
        .axis(.horizontal)
        .alignment(.center)
        .spacing(50)
        .build()
    private let firstTextField = UITextFieldBuilder()
        .borderWidth(0.5)
        .placeholder("Please enter your number.")
        .build()
    private let secondTextField = UITextFieldBuilder()
        .borderWidth(0.5)
        .placeholder("Please enter your number.")
        .build()
    private let resultLabel = UILabelBuilder().text("Result:").build()
    private let sumButton = UIButtonBuilder().title("+").backgroundColor(.blue).build()
    private let difButton = UIButtonBuilder().title("-").backgroundColor(.brown).build()
    private let multiplyButton = UIButtonBuilder().title("*").backgroundColor(.cyan).build()
    private let divideButton = UIButtonBuilder().title("/").backgroundColor(.green).build()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addSubViews()
    }

}

extension ViewController {
    private func addSubViews() {
        addMainStackView()
        addElementsOfStackView()
        addButtonsStackView()
    }
    
    private func addMainStackView() {
        view.addSubview(mainStackView)
        mainStackView.topToSuperview(usingSafeArea: true).constant = 20
        mainStackView.trailingToSuperview().constant = -30
        mainStackView.leadingToSuperview().constant = 30
    }
    
    private func addElementsOfStackView() {
        mainStackView.addArrangedSubview(firstTextField)
        mainStackView.addArrangedSubview(secondTextField)
        mainStackView.addArrangedSubview(buttonStackView)
        mainStackView.addArrangedSubview(resultLabel)
    }
    
    private func addButtonsStackView() {
        buttonStackView.addArrangedSubview(sumButton)
        buttonStackView.addArrangedSubview(multiplyButton)
        buttonStackView.addArrangedSubview(difButton)
        buttonStackView.addArrangedSubview(divideButton)
    }
}
