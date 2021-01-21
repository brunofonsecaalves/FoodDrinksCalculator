//
//  ViewController.swift
//  FoodDrinksCalculator
//
//  Created by Bruno Alves on 14/12/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var valueTextField: UITextField!
    @IBOutlet weak var numberOfPeopleLabel: UILabel!
    var numberOfPeople = 2
    var percent = 1.1
    var totalValue = 0.0
    var finalValue = "0.0"
    @IBOutlet weak var optionTenPercent: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func splitChanged(_ sender: UIStepper) {
        numberOfPeopleLabel.text = String(format: "%.0f", sender.value)
        numberOfPeople = Int(sender.value)
    }
    
    @IBAction func tenPercentChanged(_ sender: UISegmentedControl) {
        switch optionTenPercent.selectedSegmentIndex{
        case 0:
            percent = 1.1
        case 1:
            percent = 1.0
        default:
            break
        }
        print(percent)
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let value = valueTextField.text!
        print(value)
        if value != ""{
            totalValue = Double(value)!
            print(totalValue)
            let calculatedValue = (totalValue * Double(percent) / Double(numberOfPeople))
            finalValue = String(format: "%.2f", calculatedValue)
            print(finalValue)
            performSegue(withIdentifier: "goToResult", sender: self)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.eachValue = finalValue
            destinationVC.tip = Int((percent - 1) * 100)
            destinationVC.split = numberOfPeople
        }
    }
}

