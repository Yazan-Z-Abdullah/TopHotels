//
//  SearchViewController.swift
//  TopHotels
//
//  Created by Yazan Abdullah on 30/03/2022.
//

import UIKit

class SearchViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    @IBAction func searchPressed(_ sender: UIButton) {
    
        self.performSegue(withIdentifier: "goToTheResult", sender: self)
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
