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
/*    @IBOutlet weak var question2: JMMarkSlider!
    @IBOutlet weak var question3: JMMarkSlider!
    @IBOutlet weak var question4: JMMarkSlider!
    @IBOutlet weak var question5: JMMarkSlider!
    @IBOutlet weak var question6: JMMarkSlider!
    @IBOutlet weak var question7: JMMarkSlider!
    @IBOutlet weak var question8: JMMarkSlider!
    @IBOutlet weak var question9: JMMarkSlider!
    */

    var totalVal = 0
    
    @IBAction func question1changed(sender: JMMarkSlider) {
        let currentValue = Int(sender.value)
        print(currentValue)
        totalVal = currentValue + totalVal
        
        //print(totalVal)
    }
   //sets tick numbers for all sliders for all questions
/*    func setPos(question: JMMarkSlider)
    {
        question.markPositions = [0, 10, 20, 30, 4, 5, 6, 7, 8, 300]
    }
    
 */
    override func viewDidLoad() {
        super.viewDidLoad()
        question1.markPositions = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
        
        //setting tick numbers
        /*
        setPos(question: question1)
        setPos(question: question2)
        setPos(question: question3)
        setPos(question: question4)
        setPos(question: question5)
        setPos(question: question6)
        setPos(question: question7)
        setPos(question: question8)
        setPos(question: question9)
 */
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
