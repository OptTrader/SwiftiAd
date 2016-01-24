//
//  ViewController.swift
//  SwiftiAd
//
//  Created by Chris Kong on 1/25/16.
//  Copyright © 2016 Chris Kong. All rights reserved.
//

import UIKit
import iAd

class ViewController: UIViewController, ADBannerViewDelegate
{
  // MARK: Outlets
  
  @IBOutlet weak var bannerView: ADBannerView!

  // MARK: View Controller's Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    canDisplayBannerAds = true
    bannerView.delegate = self
    bannerView.hidden = true
  }

  func bannerViewDidLoadAd(banner: ADBannerView!)
  {
    bannerView.hidden = false
  }
  
  func bannerViewActionShouldBegin(banner: ADBannerView!, willLeaveApplication willLeave: Bool) -> Bool
  {
    return willLeave
  }
  
  func bannerView(banner: ADBannerView!, didFailToReceiveAdWithError error: NSError!)
  {
    bannerView.hidden = true
  }
  
}