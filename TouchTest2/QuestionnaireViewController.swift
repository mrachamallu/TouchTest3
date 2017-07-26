//
//  QuestionnaireViewController.swift
//  TouchTest2
//
//  Created by Meera Rachamallu on 7/19/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit
import JMMarkSliderSwift

class QuestionnaireViewController: UIViewController {

    @IBOutlet weak var question1: JMMarkSlider!
    @IBOutlet weak var question2: JMMarkSlider!
    @IBOutlet weak var question3: JMMarkSlider!
    @IBOutlet weak var question4: JMMarkSlider!
    @IBOutlet weak var question5: JMMarkSlider!
    @IBOutlet weak var question6: JMMarkSlider!
    @IBOutlet weak var question7: JMMarkSlider!
    @IBOutlet weak var question8: JMMarkSlider!
    @IBOutlet weak var question9: JMMarkSlider!
    

    @IBOutlet weak var No: UILabel!
    @IBOutlet weak var Occassionally: UILabel!
    @IBOutlet weak var Everyday: UILabel!
    

    var totalVal = Double()
    
    @IBAction func finalButton(_ sender: Any) {
        //using a dictionary here so that we don't get a out of index error
        for (_, value) in testResult.tempVal {
            totalVal += value
        }
    }
    
    @IBAction func question1changed(sender: JMMarkSlider) {
        testResult.tempVal[1] = Double(sender.value)
        Occassionally.textColor = UIColor.black
        if (sender.value < 0.33)
        {
            No.textColor = UIColor.black
            Everyday.textColor = UIColor.white
            Occassionally.textColor = UIColor.white
        }
        else if (sender.value > 0.66)
        {
            No.textColor = UIColor.white
            Everyday.textColor = UIColor.black
            Occassionally.textColor = UIColor.white
        }
        else if (sender.value >= 0.33)
        {
            No.textColor = UIColor.white
            Everyday.textColor = UIColor.white
            Occassionally.textColor = UIColor.black
        }
    }
    
    @IBAction func question2changed(sender: JMMarkSlider) {
        testResult.tempVal[2] = Double(sender.value)
    }
    @IBAction func question3changed(sender: JMMarkSlider) {
        testResult.tempVal[3] = Double(sender.value)
    }
    @IBAction func question4changed(sender: JMMarkSlider) {
        testResult.tempVal[4] = Double(sender.value)
    }
    @IBAction func question5changed(sender: JMMarkSlider) {
        testResult.tempVal[5] = Double(sender.value)
    }
    @IBAction func question6changed(sender: JMMarkSlider) {
        testResult.tempVal[6] = Double(sender.value)
    }
    @IBAction func question7changed(sender: JMMarkSlider) {
        testResult.tempVal[7] = Double(sender.value)
    }
    @IBAction func question8changed(sender: JMMarkSlider) {
        testResult.tempVal[8] = Double(sender.value)
    }
    @IBAction func question9changed(sender: JMMarkSlider) {
        testResult.tempVal[9] = Double(sender.value)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //print(totalVal)
        //question1.markPositions = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]

        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
