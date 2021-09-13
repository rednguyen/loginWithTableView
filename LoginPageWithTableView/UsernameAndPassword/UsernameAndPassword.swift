//
//  UsernameAndPassword.swift
//  LoginPageWithTableView
//
//  Created by Red Nguyen on 9/8/21.
//

import UIKit

class UsernameAndPassword: UITableViewCell {

    
    @IBOutlet weak var policy: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        let attributedString = NSMutableAttributedString(string: "By signing up you accept the Term of service and Privacy policy")
        attributedString.addAttribute(.link, value: "https://www.google.com", range: NSRange(location: 29, length: 15))
        attributedString.addAttribute(.link, value: "https://facebook.com", range: NSRange(location: 49, length: 14))
        policy.attributedText = attributedString
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
