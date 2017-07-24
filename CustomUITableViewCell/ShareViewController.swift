//
//  ShareViewController.swift
//  CustomUITableViewCell
//
//  Created by Pritesh Patel on 2017-07-24.
//  Copyright © 2017 Knowstack. All rights reserved.
//

import UIKit

class ShareViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func shareContent(_ sender: UIButton) {
        
        //  Converted with Swiftify v1.0.6402 - https://objectivec2swift.com/
        
        let textToShare: String = "Look at this awesome website for aspiring iOS Developers!"
        let myWebsite = URL(string: "http://www.codingexplorer.com/")
        let objectsToShare: [Any] = [textToShare, myWebsite]
        let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
        let excludeActivities: [UIActivityType] = [UIActivityType.airDrop, UIActivityType.print, UIActivityType.assignToContact, UIActivityType.saveToCameraRoll, UIActivityType.addToReadingList, UIActivityType.postToFlickr, UIActivityType.postToVimeo]
        activityVC.excludedActivityTypes = excludeActivities
        
            activityVC.excludedActivityTypes = excludeActivities
        self.present((activityVC as? UIViewController)! , animated: true) { _ in }
        
        

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
