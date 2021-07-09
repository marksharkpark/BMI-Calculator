//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Mark Park on 7/2/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    var bmiValue: String?
    var advice: String?
    var color: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        tipLabel.text = advice
        view.backgroundColor = color
        //backgroundColor.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        // tapping into method inside of UIViewController -> in order to revert back
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
