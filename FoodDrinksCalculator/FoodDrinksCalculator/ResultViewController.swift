//
//  ResultViewController.swift
//  FoodDrinksCalculator
//
//  Created by Bruno Alves on 16/12/20.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultTextField: UITextField!
    @IBOutlet weak var finalTextLabel: UILabel!
    
    
    var eachValue = "0.0"
    var split = 0
    var tip = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        resultTextField.text = eachValue
        if tip == 10 {
            finalTextLabel.text = "Conta divida para \(split) pessoas com 10% incluso."
        }else{
            finalTextLabel.text = "Conta divida para \(split) pessoas sem 10%."
        }
    }
    @IBAction func returnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
