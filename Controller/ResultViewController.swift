//
//  ResultViewController.swift
//  TopHotels
//
//  Created by Yazan Abdullah on 31/03/2022.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet var tableView: UITableView!
    
    struct Hotel {
        let hotelName : String
        let hotelPrice : String
        let hotelLocation : String
        let hotelRate : String
        let hotelImage : UIImage
    }
    
    
    var hotels: [Hotel] = [
        Hotel(hotelName: "Helton", hotelPrice: "100$" , hotelLocation: "Amman", hotelRate: "4.8",hotelImage: #imageLiteral(resourceName: "helton")),
        Hotel(hotelName: "Movinpick", hotelPrice: "200$" , hotelLocation: "Deadsea", hotelRate: "4.6",hotelImage: #imageLiteral(resourceName: "movinpick")),
        Hotel(hotelName: "Royal", hotelPrice: "300$" , hotelLocation: "Jabal amman", hotelRate: "4.9",hotelImage: #imageLiteral(resourceName: "royal")),

    ]
    
    let hotelCellID = "carsID"

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        setupTableView()
    }
    
    
    func setupTableView() {
        let hotelNib = UINib(nibName: "HotelTableViewCell", bundle: nil)
        tableView.register(hotelNib, forCellReuseIdentifier: hotelCellID)
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




//MARK: - UITableViewDataSource

extension ResultViewController : UITableViewDataSource,UITableViewDelegate{

   

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Hotel"
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return hotels.count

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {



        let cell = tableView.dequeueReusableCell(withIdentifier: hotelCellID, for: indexPath) as! HotelTableViewCell

            let hotelCell = hotels[indexPath.row]

            cell.hotelName.text = hotelCell.hotelName
            cell.hotelLocation.text = hotelCell.hotelLocation
            cell.hotelRate.text = hotelCell.hotelRate
            cell.hotelImageView.image = hotelCell.hotelImage

            return cell
        
        }
    }

