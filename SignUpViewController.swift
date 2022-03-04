//
//  SignUpViewController.swift
//  REC-ON
//


import UIKit
import FirebaseAuth

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signupButton: UIButton!
    
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setUpElements()
    }
    
    func setUpElements(){
        
        //Hide the Error Message
        errorLabel.alpha = 0
        
        //Style the Elements
        Utilities.styleTextField(firstNameTextField)
        Utilities.styleTextField(lastNameTextField)
        Utilities.styleTextField(usernameTextField)
        Utilities.styleTextField(emailTextField)
        Utilities.styleTextField(passwordTextField)
        Utilities.styleFilledButton(signupButton)
    }
    
    

    
    //Check the fields and validate that the data is correct. If everything is correct, this method returns nil. Otherwise, it returns the error message.
    func validateFields() -> String? {
        
        //Check that all fields are filled
        if firstNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || lastNameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || usernameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""
        {
            
            return "Please fill in all fields."
        }
        
        
        //Check if the password is secure
        let clearedPassword = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if Utilities.isPasswordValid(clearedPassword) == false {
            
            //Password is not secured enough
            return "Please make sure your password is at least 8 characters long, contains a special character and a number."
        }
        
        
        
        return nil
    }
    
    
    
    @IBAction func signupTapped(_ sender: Any) {
        
       //-----For Authencation on Firebase ⤵︎ --------------
        
      /*  //Validate the fields
        let error = validateFields()
        
        if error != nil {
            
            showError(error!)
        }
        else {
           
            //Create the user
            Auth.auth().createUser(withEmail: <#T##String#>, password: <#T##String#>) { (result, err) in
                
                //Check for errors
                if err != nil {
                    
                    //There is an error creating the the user
                    showError("Error creating user")
                }
                else {
                    
                    //User created successfully, store first and last name, username
                    
                }
            }*/
            
            //Transition to the home screen
        }
        
        /*func showError(_ message:String ) {
            
            errorLabel.text = message
            errorLabel.alpha = 1
        }*/
        
        
        
        
        
    }
    

