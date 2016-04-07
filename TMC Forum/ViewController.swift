//
//  ViewController.swift
//  TMC Forum
//
//  Created by Alex Karahalios on 4/3/16.
//  Copyright © 2016 OuterSoft, Inc. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    @IBOutlet var forumView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        var webURL = NSURL(string:"https://TeslaMotorsClub.com")
        if let URLstring = NSUserDefaults.standardUserDefaults().stringForKey("name_preference")
        {
            webURL = NSURL(string: URLstring)
        }
        let svc = SFSafariViewController(URL: webURL!)
        presentViewController(svc, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

