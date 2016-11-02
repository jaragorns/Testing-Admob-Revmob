//
//  ViewController.swift
//  Testing
//
//  Created by Jonathan Silva on 31/10/16.
//  Copyright © 2016 Jonathan Silva. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController {

    @IBOutlet weak var bannerView: GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let completionBlock: () -> Void = {
            RevMobAds.session().showFullscreen()
        }
        let errorBlock: ((Error?) -> Void)! = {error in  
            // check the error
            print(error)
        }
        RevMobAds.startSession(withAppID: "581922ffa299d77c418b2c68", withSuccessHandler: completionBlock, andFailHandler: errorBlock)
        
        print("Google Mobile Ads SDK version: " + GADRequest.sdkVersion())
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

