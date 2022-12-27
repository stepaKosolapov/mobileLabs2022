//
//  ViewController.swift
//  lab1_kosolapov
//
//  Created by Stepan Kosolapov on 27.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func myButtonClicked(_ sender: Any) {
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        dateFormatter.locale = Locale(identifier: "ru_Ru")
        
        myLabel.text = dateFormatter.string(from: currentDate)
        print("clicked")
    }
    
}

