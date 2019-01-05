//
//  FrontViewController.swift
//  NavigationDrawer-Swift
//
//  Created by Pulkit Rohilla on 25/05/17.
//  Copyright © 2018 PulkitRohilla. All rights reserved.
//

import UIKit

class FrontViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupNavigationBar()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setupNavigationBar(){
    
        let barBtnNavigation : UIBarButtonItem = UIBarButtonItem.init(image: #imageLiteral(resourceName: "navIcon"), style: .plain, target: navigationDrawerController(), action: Selector(("toggleDrawer")))
        barBtnNavigation.tintColor = UIColor.white
        
        self.navigationItem.leftBarButtonItem = barBtnNavigation
        self.navigationItem.title = "Navigation Drawer"
    }

 
}
