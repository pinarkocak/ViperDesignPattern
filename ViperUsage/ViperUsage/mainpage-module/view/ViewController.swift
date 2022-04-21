//
//  ViewController.swift
//  ViperUsage
//
//  Created by Pınar Koçak on 18.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtFieldNumber2: UITextField!
    @IBOutlet weak var txtFieldNumber1: UITextField!
    @IBOutlet weak var labelResult: UILabel!
    
    var presenterObj: ViewToPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelResult.text = "0"
        Router.createModule(ref: self)
    }
    
    @IBAction func btnAdd(_ sender: Any) {
        if let number1 = txtFieldNumber1.text, let number2 = txtFieldNumber2.text {
            presenterObj?.addition(num1: number1, num2: number2)
        }
    }
    
    @IBAction func btnMultiply(_ sender: Any) {
        if let number1 = txtFieldNumber1.text, let number2 = txtFieldNumber2.text {
            presenterObj?.multiplication(num1: number1, num2: number2)
        }
    }
}

extension ViewController: PresenterToViewProtocol {
    func sendDataToView(result: String) {
        labelResult.text = result
    }
}

