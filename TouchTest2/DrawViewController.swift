//
//  ViewController.swift
//  ios_swift_drawing_app
//
//  Created by Maxim Bilan on 4/29/15.
//  Copyright (c) 2015 Maxim Bilan. All rights reserved.
//

import UIKit

class DrawViewController: UIViewController {

	@IBOutlet weak var drawingView: DrawingView!
    @IBOutlet weak var drawingView2: DrawingView2!
    var multiplierForDecision: Int?
	
    @IBAction func nextButton(_ sender: Any) {
        if (drawingView.outOfBounds * multiplierForDecision! > drawingView.inBounds){
            testResult.Aresult = "disorder"
        }
        else{
            testResult.Aresult = "healthy"
        }
    }
   @IBAction func resultButton(_ sender: Any) {
    if (drawingView2.outOfBounds * multiplierForDecision! > drawingView2.inBounds){
        testResult.Oresult = "disorder"
    }
    else{
        testResult.Oresult = "healthy"
    }
    /*
        print(drawingView.outOfBounds)
        print(drawingView.inBounds)
        var message: String?
        if (drawingView.outOfBounds * multiplierForDecision! > drawingView.inBounds){
            message = "You seem to have motor disorder"
        }
        else{
            message = "You don't seem to have a motor disorder"
        }
        
        let alert = UIAlertController(title: "Results", message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Retry", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: drawingView.clear) */
        
    }
	override func viewDidLoad() {
		super.viewDidLoad()
        multiplierForDecision = 10
        
        //drawingView.Correction = 30
        //drawingView2.Correction = 30

		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
    


}

