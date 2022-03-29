//
//  ViewController.swift
//  TopHotels
//
//  Created by Yazan Abdullah on 29/03/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var welcomeBackground: UIImageView!
    @IBOutlet var welcomeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        welcomeLabel.text = "Welcome to the Best Booking App"
        
        welcomeBackground.image = #imageLiteral(resourceName: "background")
        
        
    }


}

