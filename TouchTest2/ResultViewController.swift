//
//  ResultViewController.swift
//  TouchTest2
//
//  Created by Meera Rachamallu on 7/26/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    @IBOutlet weak var resultText: UITextView!
    
    var limitForDisease = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        print(testResult.Oresult) //DOESNT WORK BC GETS CALLED BEFORE Oresult is passed in
        if (testResult.Oresult > limitForDisease)
        {
            resultText.text = String("Results suggest that you should consider consulting a licensed physician")
        }else {
            resultText.text = String("Results indicate that you are not at risk for a motor disease")
        }
        
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
