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
    

    var totalVal = Double()
    
    @IBAction func question1changed(sender: JMMarkSlider) {
        
        totalVal = Double(sender.value)
        print(totalVal)
    }
    
    @IBAction func question2changed(sender: JMMarkSlider) {
        
        totalVal += Double(sender.value)
    }
    @IBAction func question3changed(sender: JMMarkSlider) {
        
        totalVal += Double(sender.value)
    }
    @IBAction func question4changed(sender: JMMarkSlider) {
        
        totalVal += Double(sender.value)
    }
    @IBAction func question5changed(sender: JMMarkSlider) {
        
        totalVal += Double(sender.value)
    }
    @IBAction func question6changed(sender: JMMarkSlider) {
        
        totalVal += Double(sender.value)
    }
    @IBAction func question7changed(sender: JMMarkSlider) {
        
        totalVal += Double(sender.value)
    }
    @IBAction func question8changed(sender: JMMarkSlider) {
        
        totalVal += Double(sender.value)
    }
    @IBAction func question9changed(sender: JMMarkSlider) {
        
        totalVal += Double(sender.value)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print(totalVal)
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
