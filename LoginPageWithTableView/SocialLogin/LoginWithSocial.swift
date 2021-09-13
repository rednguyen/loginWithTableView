//
//  LoginWithSocial.swift
//  LoginPageWithTableView
//
//  Created by Red Nguyen on 9/8/21.
//

import UIKit

class LoginWithSocial: UITableViewCell {

    @IBOutlet weak var register: UIButton!
    @IBOutlet weak var google: UIButton!
    @IBOutlet weak var facebook: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.register.layer.cornerRadius = 5
        self.register.clipsToBounds = true
        self.google.layer.cornerRadius = 5
        self.google.clipsToBounds = true
        self.facebook.layer.cornerRadius = 5
        self.facebook.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
