//
//  DrawingView.swift
//  ios_swift_drawing_app
//
//  Created by Maxim Bilan on 4/29/15.
//  Copyright (c) 2015 Maxim Bilan. All rights reserved.
//

import UIKit
import AVFoundation

class DrawingView: UIView {
	
	var drawColor = UIColor.black
	var lineWidth: CGFloat = 5
    var outOfBounds: Int = 0 //use to track if it goes out of bounds
    var inBounds: Int = 0 //^^ in bounds
    var Correction: CGFloat = 30
	
	private var lastPoint: CGPoint!
	private var bezierPath: UIBezierPath!
	private var pointCounter: Int = 0
	private let pointLimit: Int = 128
	private var preRenderImage: UIImage!
	
	// MARK: - Initialization
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		
		initBezierPath()
	}

	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		
		initBezierPath()
	}
	
	func initBezierPath() {
		bezierPath = UIBezierPath()
		bezierPath.lineCapStyle = CGLineCap.round
		bezierPath.lineJoinStyle = CGLineJoin.round
	}
	
	// MARK: - Touch handling
	
	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		let touch: AnyObject? = touches.first
		lastPoint = touch!.location(in: self)
		pointCounter = 0
	}
	
	override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
		let touch: AnyObject? = touches.first
		let newPoint = touch!.location(in: self)
		
		bezierPath.move(to: lastPoint)
		bezierPath.addLine(to: newPoint)
		lastPoint = newPoint
        
        //for the letter A
        // "/": (25, 450) to (170, 160) with slope 2
        // "\": (170, 160) to (315, 450) with slope -2
        // "-": (75, 347) to (265, 347) with slope 0
        
        let yCoord1: CGFloat = (-2)*lastPoint.x + 500
        let yCoord2: CGFloat = (2)*lastPoint.x - 180
        
        if ((lastPoint.y < 160 - Correction) || (lastPoint.y > 450 + Correction)
            || (lastPoint.x < 25 - Correction) || (lastPoint.x > 315 + Correction))
        {
            outOfBounds += 1
            testResult.outOfBoundsA += 1
            AudioServicesPlaySystemSound(1200)
            print("1200")
        }
        else if (((lastPoint.x > 75) && (lastPoint.x < 265))
            && ((lastPoint.y < 347 + Correction) && (lastPoint.y > 347 - Correction)))
        {
            inBounds += 1
            //AudioServicesPlaySystemSound(1201)
            print("1201")
        }
        else if (((lastPoint.x > 25 - Correction) && (lastPoint.x < 170 + Correction)) && ((lastPoint.y < yCoord1 + Correction) && (lastPoint.y > yCoord1 - Correction)))
        {
            inBounds += 1
            //AudioServicesPlaySystemSound(1202)
            print("1202")
        }
        else if (((lastPoint.x > 170 - Correction) && (lastPoint.x < 315 + Correction)) && ((lastPoint.y < yCoord2 + Correction) && (lastPoint.y > yCoord2 - Correction)))
        {
            inBounds += 1
            //AudioServicesPlaySystemSound(1203)
            print("1203")
        }
        else
        {
            outOfBounds += 1
            testResult.outOfBoundsA += 1
            AudioServicesPlaySystemSound(1204)
            print("1204")
        }
		
		pointCounter += 1
		
		if pointCounter == pointLimit {
			pointCounter = 0
			renderToImage()
			setNeedsDisplay()
			bezierPath.removeAllPoints()
		}
		else {
			setNeedsDisplay()
		}
 
	}
	
	override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
		pointCounter = 0
		renderToImage()
		setNeedsDisplay()
		bezierPath.removeAllPoints()
	}
	
	override func touchesCancelled(_ touches: Set<UITouch>?, with event: UIEvent?) {
		touchesEnded(touches!, with: event)
	}
	
	// MARK: - Pre render
	
	func renderToImage() {
		
		UIGraphicsBeginImageContextWithOptions(self.bounds.size, false, 0.0)
		if preRenderImage != nil {
			preRenderImage.draw(in: self.bounds)
		}
		
		bezierPath.lineWidth = lineWidth
		drawColor.setFill()
		drawColor.setStroke()
		bezierPath.stroke()
		
		preRenderImage = UIGraphicsGetImageFromCurrentImageContext()
		
		UIGraphicsEndImageContext()
	}
	
	// MARK: - Render

	override func draw(_ rect: CGRect) {
		super.draw(rect)
		
		if preRenderImage != nil {
			preRenderImage.draw(in: self.bounds)
		}
		
		bezierPath.lineWidth = lineWidth
		drawColor.setFill()
		drawColor.setStroke()
		bezierPath.stroke()
	}

	// MARK: - Clearing
	
	func clear() {
		preRenderImage = nil
		bezierPath.removeAllPoints()
		setNeedsDisplay()
        inBounds = 0
        outOfBounds = 0
	}
	
	// MARK: - Other

	func hasLines() -> Bool {
		return preRenderImage != nil || !bezierPath.isEmpty
	}

}
