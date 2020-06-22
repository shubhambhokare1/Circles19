//
//  HomeViewController.swift
//  Circles
//
//  Created by Shubham Bhokare on 6/21/20.
//  Copyright © 2020 Shubham Bhokare. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var addFriendButton: UIButton!
    @IBOutlet weak var alertSettingsButton: UIButton!
    @IBOutlet weak var myStatusTextField: UITextField!
    
    let myPickerData = [String](arrayLiteral: "Unaffected", "Quarantining", "Tested Positive", "Showing Symptoms")
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView( _ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myPickerData.count
    }

    func pickerView( _ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
     return myPickerData[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        myStatusTextField.text = myPickerData[row]
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let statusPicker = UIPickerView()
        statusPicker.delegate = self
        myStatusTextField.inputView = statusPicker
        
        styles.styleTF(myStatusTextField)
        myStatusTextField.textAlignment = .center
        
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
