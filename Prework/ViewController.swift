//
//  ViewController.swift
//  Prework
//
//  Created by Tramy Dong on 1/19/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var homeTownTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var majorTextField: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    
    @IBOutlet weak var numberOfSiblingsLabel: UILabel!
    @IBOutlet weak var numberOfPetsLabel: UILabel!

    
    @IBAction func siblingStepperDidChange(_ sender: UIStepper) {
        numberOfSiblingsLabel.text = "\(Int(sender.value))"
    }
   
    @IBAction func petStepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceDidTap(_ sender: UIButton){
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        let introduction = "My name is \(firstNameTextField.text!) \(lastNameTextField.text!) and my hometown is \(homeTownTextField.text!). I am a \(year!) at \(schoolNameTextField.text!) studying \(majorTextField.text!). I have \(numberOfSiblingsLabel.text!) siblings and I own \(numberOfPetsLabel.text!) pets. It is \(morePetsSwitch.isOn) that I want more pets."
        
        let alertController = UIAlertController(title: "Your Introduction", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Cool :D", style: .default, handler: nil)
        
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

