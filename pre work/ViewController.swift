//
//  ViewController.swift
//  pre work
//
//  Created by Anunjin Batdelger on 8/23/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolTextField: UITextField!
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var morePetStepper: UIStepper!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        // Get the selected year from segmented control
        let year = yearSegmentedControl.titleForSegment(
            at: yearSegmentedControl.selectedSegmentIndex
        ) ?? ""
        
        // Create the introduction string
        let introduction = """
        My name is \(firstNameTextField.text ?? "") \(lastNameTextField.text ?? "") and I attend \(schoolTextField.text ?? "").
        I am currently in my \(year) year and I own \(numberOfPetsLabel.text ?? "0") pets.
        It is \(morePetsSwitch.isOn) that I want more pets.
        """
        
        // Show an alert
        let alertController = UIAlertController(
            title: "My Introduction",
            message: introduction,
            preferredStyle: .alert
        )
        
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
}

