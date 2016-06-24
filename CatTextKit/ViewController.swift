//
//  ViewController.swift
//  CatTextKit
//
//  Created by Louis Tur on 6/23/16.
//  Copyright © 2016 catthoughts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = UIColor.whiteColor()
    self.view.addSubview(textRenderingView)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  lazy internal var textRenderingView: TextRenderingView = {
    let view = TextRenderingView(frame: CGRectMake(0.0, 100.0, self.view.frame.size.width, 300.0))
//    view.backgroundColor = UIColor.whiteColor()
    return view
  }()
  
}

