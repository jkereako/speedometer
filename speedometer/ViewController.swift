//
//  ViewController.swift
//  speedometer
//
//  Created by Johann Pardanaud on 29/09/2015.
//  Copyright © 2015 Johann Pardanaud. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, SpeedManagerDelegate {

    @IBOutlet weak var speedField: UITextField?

    let speedManager = SpeedManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        speedManager.delegate = self
    }

    func speedDidChange(speed: CLLocationSpeed) {
        speedField?.text = String(Int(speed))
    }

}

