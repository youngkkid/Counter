//
//  ViewController.swift
//  Counter
//
//  Created by Илья Ануфриев on 11.11.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var numberImageView: UILabel!
    @IBOutlet weak var infoTextField: UITextField!
    private var isZero: Bool = true
    private var status: Bool = true
    private var counter: Int = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        numberImageView.text = "0"
        infoTextField.text = "Количество изменений: 0 "
    }
    
    @IBAction func plusButton(_ sender: UIButton) {
        print("Нажатие")
        if status {
            infoTextField.text = "Значение счетчика: \(counter)"
        }
        if isZero {
            numberImageView.text = "\(counter)"
        }
        counter += 1
    }
}
