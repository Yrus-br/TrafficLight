//
//  ViewController.swift
//  TrafficLight
//
//  Created by Jorgen Shiller on 17.09.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var nextButton: UIButton!
    override func viewDidLayoutSubviews() {
        self.redLight.layer.cornerRadius = self.redLight.bounds.size.height / 2
        self.yellowLight.layer.cornerRadius = self.yellowLight.bounds.size.height / 2
        self.greenLight.layer.cornerRadius = self.greenLight.bounds.size.height / 2
        nextButton.layer.cornerRadius = 20
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func nextButtonTapped() {
        if redLight.alpha == 0.5 {
            redLight.alpha = 1
            nextButton.setTitle("Ready?", for: .normal)
        }
        else if yellowLight.alpha == 0.5 {
            redLight.alpha = 0.51
            yellowLight.alpha = 1
            nextButton.setTitle("Steady?", for: .normal)}
        else if greenLight.alpha == 0.5 {
            yellowLight.alpha = 0.51
            greenLight.alpha = 1
            nextButton.setTitle("GO!", for: .normal)}
        else {
            greenLight.alpha = 0.50
            yellowLight.alpha = 0.50
            redLight.alpha = 0.50
            nextButton.setTitle("Again?", for: .normal)}
    }
}

