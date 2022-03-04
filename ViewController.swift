//
//  ViewController.swift
//  REC-ON

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var signupButton: UIButton!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setUpElement()
    }

    func setUpElement(){
        
        //Style Buttons
        Utilities.styleFilledButton(signupButton)
        Utilities.styleHollowButton(loginButton)
    }

}

