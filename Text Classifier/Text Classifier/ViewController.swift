//
//  ViewController.swift
//  Text Classifier
//
//  Created by Muhamed Alkhatib on 13/09/2020.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var emoji: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func classifyPressed(_ sender: UIButton) {
        
        let textClassifier = TextClassifier()
        
        let prediction = try! textClassifier.prediction(text: textField.text!)
        print (prediction.label)
        
        
        switch prediction.label {
                    case "Positive":
                        emoji.text="🙂"
                    case "Negative":
                        emoji.text="☹️"
                    default:
                        emoji.text="😐"
                    }
        
        
    }
    
}

