//
//  ViewController.swift
//  GradesFunctionAppGruper
//
//  Created by MICHAEL GRUPER on 9/20/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var pointsEarnedTextField: UITextField!
    @IBOutlet weak var labelOutlet: UILabel!
    @IBOutlet weak var pointsPossibleTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButtonAction(_ sender: UIButton) {
        if passed(i: Double(pointsEarnedTextField.text!) ?? 0, j: Double(pointsPossibleTextField.text!) ?? 0){
            labelOutlet.text = "You Passed!"
        }
        else{
            labelOutlet.text = "You Failed!"
        }
    }
    func passed(i: Double, j: Double) -> Bool {
        if i/j <= 0.59{
            return false
        }
        else{
            return true
        }
    }
}

