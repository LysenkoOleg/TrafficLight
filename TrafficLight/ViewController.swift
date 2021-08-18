//
//  ViewController.swift
//  TrafficLight
//
//  Created by Олег Лысенко on 18.08.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.layer.cornerRadius = 60
        yellowView.layer.cornerRadius = 60
        greenView.layer.cornerRadius = 60
        startButton.layer.cornerRadius = 10
        
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        
    }

    @IBAction func startToNext() {
        redView.alpha = 1
        startButton.setTitle("NEXT", for: .normal)
    
        if redView.alpha == 1 {
            redView.alpha = 0.3
            yellowView.alpha = 1
        }
        
        if yellowView.alpha == 1 {
            yellowView.alpha = 0.3
            greenView.alpha = 1
        }
        
        if greenView.alpha == 1 {
            greenView.alpha = 0.3
            redView.alpha = 1
        }
    }
    
}

