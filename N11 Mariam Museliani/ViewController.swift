//
//  ViewController.swift
//  N11 Mariam Museliani
//
//  Created by Mariam Museliani on 11.04.24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    @IBOutlet weak var resultsButton: UIButton!
    
    @IBOutlet weak var sumLabel: UILabel!
    @IBOutlet weak var differenceLabel: UILabel!
    @IBOutlet weak var averageLabel: UILabel!
    
    // ახალი აუთლეთები
    @IBOutlet weak var horizontalStackView: UIStackView!
    @IBOutlet weak var resultsButtonHeightConstraint: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.text = "\(Int.random(in: 1...100))"
        label2.text = "\(Int.random(in: 1...100))"
        label3.text = "\(Int.random(in: 1...100))"
        
        //სიმაღლეების ცვლილება
         horizontalStackView.heightAnchor.constraint(equalToConstant: 90).isActive = true
         resultsButtonHeightConstraint.constant = 20
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // ფერების ცვლილება
        self.view.backgroundColor = UIColor.systemGray5
        horizontalStackView.backgroundColor = UIColor.systemGray2
    }
    

    
    @IBAction func calculateResult(_ sender: UIButton) {
        guard let number1 = Int(label1.text ?? ""),
              let number2 = Int(label2.text ?? ""),
              let number3 = Int(label3.text ?? "") else {
            return
        }
        
        let sum = number1 + number2 + number3
        let difference = (number1 - number2 - number3)
        let average = Double(sum) / 3.0
        
        sumLabel.text = "ჯამი: \(sum)"
        differenceLabel.text = "სხვაობა: \(difference)"
        averageLabel.text = String(format: "საშუალო: %.2f", average)
    }
}
