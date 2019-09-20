//
//  ViewController.swift
//  MinApp2
//
//  Created by COE-18 on 20/09/19.
//  Copyright © 2019 COE-18. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{

    var menu:[[String:String]] = [
        
        ["Title":"Sign Up","Controller":"redScene"],
        ["Title":"Sign In","Controller":"greenScene"]

    ]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return menu.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellScene", for: indexPath)
        
         cell.textLabel?.text = menu[indexPath.section]["Title"]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        let controller = self.storyboard?.instantiateViewController(withIdentifier: menu[indexPath.section]["Controller"]!)
        self.navigationController?.pushViewController(controller!, animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

