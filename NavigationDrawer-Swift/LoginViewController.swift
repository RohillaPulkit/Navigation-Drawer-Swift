//
//  LoginViewController.swift
//  NavigationDrawer-Swift
//
//  Created by Pulkit Rohilla on 26/05/17.
//  Copyright © 2018 PulkitRohilla. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func actionLogin(_ sender: Any) {
        
        let menuController  = self.storyboard?.instantiateViewController(withIdentifier: "DrawerMenu")
        let frontController = self.storyboard?.instantiateViewController(withIdentifier: "FrontViewController")
        let frontNavController : UINavigationController = self.storyboard?.instantiateViewController(withIdentifier: "CommonNavController") as! UINavigationController
        
        frontNavController.viewControllers = [frontController!]
        
        let navDrawerController = NavigationDrawerController.init(frontViewController: frontNavController, menuController: menuController!)
        
        self.present(navDrawerController, animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
