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
	
    @IBAction func NextButton(_ sender: Any) {
        print(drawingView.outOfBounds)
        print(drawingView.inBounds)
        var message: String?
        if (drawingView.outOfBounds * 10 > drawingView.inBounds){
            message = "You seem to have motor disorder"
        }
        else{
            message = "You don't seem to have a motor disorder"
        }
        
        let alert = UIAlertController(title: "Results", message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Retry", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: drawingView.clear)
        
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

