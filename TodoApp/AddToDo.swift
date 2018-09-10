//
//  AddToDo.swift
//  TodoApp
//
//  Created by staff on 2018/09/10.
//  Copyright © 2018年 staff. All rights reserved.
//

import UIKit

var todoItem = [String]()

class AddToDo: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var addButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func tappedButton(_ sender: UIButton) {
        todoItem.append(textField.text!)
        UserDefaults.standard.setValue(todoItem, forKey: "todoItem")
        textField.text = ""
    }
}
