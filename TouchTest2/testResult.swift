//
//  testResult.swift
//  TouchTest2
//
//  Created by Ayush Patel on 7/27/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//


//creating a global struct so that it can be shared across the different views when you click next
struct testResult {
    static var tempVal = [Int : Double]() //you need it to be static to work
    static var tempValPtr = 0
    //static var tempVal = Array(repeating: -1.0, count: 9)
    static var Aresult = String()
    static var Oresult = String()
    static var totalDepValue = -0.5
    static var outOfBoundsA = 0;
}
