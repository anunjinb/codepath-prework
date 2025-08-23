//
//  ViewController.swift
//  pre work
//
//  Created by Anunjin Batdelger on 8/23/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var morePetStepper: UIStepper!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolTextField: UITextField!
    @IBOutlet weak var morePetLabel: UILabel!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        // Convert the stepper's value (Double) to Int and update the label
      morePetLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        // Get the selected year from segmented control
        let year = yearSegmentedControl.titleForSegment(
            at: yearSegmentedControl.selectedSegmentIndex
        ) ?? ""

        // Create the introduction string using string interpolation
        let introduction = """
        My name is \(firstNameTextField.text ?? "") \(lastNameTextField.text ?? "") and I attend \(schoolTextField.text ?? "").
        I am currently in my \(year) year and I own \(morePetLabel.text ?? "0") pets.
        It is \(morePetsSwitch.isOn) that I want more pets.
        """

        // Create an alert controller
        let alertController = UIAlertController(
            title: "My Introduction",
            message: introduction,
            preferredStyle: .alert
        )

        // Add a button to dismiss the alert
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        alertController.addAction(action)

        // Present the alert
        present(alertController, animated: true, completion: nil)
    }


}

