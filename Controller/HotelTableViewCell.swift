//
//  HotelTableViewCell.swift
//  TopHotels
//
//  Created by Yazan Abdullah on 31/03/2022.
//

import UIKit

class HotelTableViewCell: UITableViewCell {

    @IBOutlet var hotelImageView: UIImageView!
    @IBOutlet var hotelName: UILabel!
    @IBOutlet var hotelLocation: UILabel!
    @IBOutlet var hotelRate: UILabel!
    @IBOutlet var hotelPrice: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
