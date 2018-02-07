//
//  ViewControllerB.swift
//  ViewcontrollerDataPassing
//
//  Created by SABA on 07/02/18.
//  Copyright © 2018 com.ios.sample. All rights reserved.
//

import UIKit

protocol ViewControllerBDelegate : AnyObject {
    
     func textChanged(text: String?)
}

class ViewControllerB: UIViewController {

    weak var delegate: ViewControllerBDelegate?
    
    @IBOutlet weak var label: UILabel?
    
    var text: String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label?.text = text
    }
    
    // Uppercase button
    @IBAction func uppercasebutton(_ sender: Any) {
        label?.text = label?.text?.uppercased()
        delegate?.textChanged(text: label?.text)
    }
    
    // Lowercase button
    @IBAction func lowercasebutton(_ sender: Any) {
        label?.text = label?.text?.lowercased()
        delegate?.textChanged(text: label?.text)
    }
}
