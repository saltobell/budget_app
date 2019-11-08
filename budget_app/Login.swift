//
//  Login.swift
//  budget_app
//
//  Created by Shirlene Jessica on 11/7/19.
//  Copyright © 2019 CSCI 187. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var textField : UITextField!
    var label : UILabel!
    let str : String = "You have entered: "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Color #1 - Initial color
        view.backgroundColor = UIColor.green
        
        let placeholder = NSAttributedString(string: "Enter here", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        
        textField = UITextField(frame: CGRect(x: 50, y: 100, width: 200, height: 20))
        
        textField.attributedPlaceholder = placeholder
        textField.textColor = UIColor.black
        textField.delegate = self
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.clearsOnBeginEditing = true
        view.addSubview(textField)
        
        label = UILabel(frame: CGRect(x: 50, y: 200, width: 200, height: 20))
        label.text = str
        view.addSubview(label)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        //Color #2 - While selecting the text field
        view.backgroundColor = UIColor.purple
    }
    
    func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        //Color #3 - While touching outside the textField.
        view.backgroundColor = UIColor.cyan
        
        //Hide the keyboard
        textField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        //Display the result.
        label.text = str+textField.text!
        
        //Color #4 - After pressing the return button
        view.backgroundColor = UIColor.orange
        textField.resignFirstResponder() //Hide the keyboard
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

