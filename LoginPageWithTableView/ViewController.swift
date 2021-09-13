//
//  ViewController.swift
//  LoginPageWithTableView
//
//  Created by Red Nguyen on 9/8/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let logo = "CusomTableViewCellLogo"
    
    let usernameAndPassword = "UsernameAndPassword"
    
    let socialLogin = "LoginWithSocial"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.tableView.register(UINib(nibName: logo, bundle: nil), forCellReuseIdentifier: logo)
        self.tableView.register(UINib(nibName: usernameAndPassword, bundle: nil), forCellReuseIdentifier: usernameAndPassword)
        self.tableView.register(UINib(nibName: socialLogin, bundle: nil), forCellReuseIdentifier: socialLogin)
        self.tableView.separatorColor = UIColor .clear
        self.tableView.allowsSelection = false;
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = self.tableView.dequeueReusableCell(withIdentifier: logo) as? CusomTableViewCellLogo
            return cell ?? CusomTableViewCellLogo()
        case 1:
            let cell = self.tableView.dequeueReusableCell(withIdentifier: usernameAndPassword) as? UsernameAndPassword
            return cell ?? UsernameAndPassword()
        case 2:
            let cell = self.tableView.dequeueReusableCell(withIdentifier: socialLogin) as? LoginWithSocial
            return cell ?? LoginWithSocial()
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 327
        case 1:
            return 151
        case 2:
            return 356
        default:
            return 100
        }
    }
}
