//
//  ViewController.swift
//  MultiThreadingPractice
//
//  Created by iOS Training on 12/25/18.
//  Copyright © 2018 iOS Training. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        testMultithreadingOperations()
        
    }
    
    func testMultithreadingOperations() {
        let serialQueue = DispatchQueue(label: "My Serial Queue")
        
        let myMultithreadedQueue = DispatchQueue(label: "MultiThreadedQueue", qos: .default, attributes: .concurrent, autoreleaseFrequency: .inherit, target: nil)
        
        
        serialQueue.async {
            
            for index in 1...10000 {
                print("First Task index -- \(index)")
            }
        }
        
        serialQueue.async {
            for index in 10001...15000 {
                print("Second Task index -- \(index)")
            }
        }
        
        print("Hello Ganesh !!!")
        print("Hello Pritam !!!")
        print("Hello Evrybody !!!!")
    }
    
    
    
    
    
}
