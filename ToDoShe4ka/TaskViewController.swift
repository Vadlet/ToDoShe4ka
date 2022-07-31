//
//  TaskViewController.swift
//  ToDoShe4ka
//
//  Created by Vadlet on 31.07.2022.
//

import UIKit

class TaskViewController: UIViewController {
    
    private lazy var textField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Новая задача"
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    private lazy var saveButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "Blue")
        button.setTitle("Сохранить задачу", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.setTitleColor(UIColor.white , for: .normal)
        button.layer.cornerRadius = 4
        button.addTarget(self, action: #selector(save), for: .touchUpInside)
        return button
    }()
    
    private lazy var cancelButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "Red")
        button.setTitle("Сохранить задачу", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.setTitleColor(UIColor.white , for: .normal)
        button.layer.cornerRadius = 4
        button.addTarget(self, action: #selector(cancel), for: .touchUpInside)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupSubviews(textField, saveButton, cancelButton)
        setConstraints()
    }
    
    private func setupSubviews(_ subviews: UIView...) {
        subviews.forEach { subview in
            view.addSubview(subview)
        }
    }
    
    private func setConstraints() {
        textField.translatesAutoresizingMaskIntoConstraints = false
        saveButton.translatesAutoresizingMaskIntoConstraints = false
        cancelButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            textField.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            textField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            
            saveButton.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 20),
            saveButton.leadingAnchor.constraint(equalTo: textField.leadingAnchor),
            saveButton.trailingAnchor.constraint(equalTo: textField.trailingAnchor),
            
            cancelButton.topAnchor.constraint(equalTo: saveButton.bottomAnchor, constant: 20),
            cancelButton.leadingAnchor.constraint(equalTo: textField.leadingAnchor),
            cancelButton.trailingAnchor.constraint(equalTo: textField.trailingAnchor)
        ])
    }
    
    @objc private func save() {
        dismiss(animated: true)
    }
    
    @objc private func cancel() {
        dismiss(animated: true)
    }
}
