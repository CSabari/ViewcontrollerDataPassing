//
//  ViewController.swift
//  ViewcontrollerDataPassing
//
//  Created by SABA on 07/02/18.
//  Copyright © 2018 com.ios.sample. All rights reserved.
//

import UIKit

class ViewControllerA: UIViewController, ViewControllerBDelegate {

    @IBOutlet weak var textField: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewControllerB = segue.destination as? ViewControllerB {
            viewControllerB.text = textField.text
            viewControllerB.delegate = self
        }
    }
    
    func textChanged(text: String?) {
        textField.text = text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

