//
//  TextRenderingView.swift
//  CatTextKit
//
//  Created by Louis Tur on 6/24/16.
//  Copyright © 2016 catthoughts. All rights reserved.
//

import UIKit

class TextRenderingView: UIView {
  
  override func drawRect(rect: CGRect) {
    let context = UIGraphicsGetCurrentContext()
    CGContextTranslateCTM(context!, 0, rect.size.height)
    CGContextScaleCTM(context!, 1.0, -1.0)
    CGContextSetTextMatrix(context!, CGAffineTransformIdentity)
    
    let path = CGPathCreateMutable()
    let rectBounds = rect
    CGPathAddRect(path, nil, rectBounds)
    
    let textString: CFMutableStringRef = CFStringCreateMutable(kCFAllocatorDefault, 0)
    CFStringAppend(textString, "Testing text")
    let attributedString: CFMutableAttributedStringRef = CFAttributedStringCreateMutable(kCFAllocatorDefault, 0)
    CFAttributedStringReplaceString(attributedString, CFRangeMake(0 ,0), textString)
    
    let rgbColorSpaceRef: CGColorSpaceRef = CGColorSpaceCreateDeviceRGB()!
    let components: [CGFloat] = [ 1.0, 0.0, 0.0, 0.8 ]
    let red: CGColorRef = CGColorCreate(rgbColorSpaceRef, components)!

    CFAttributedStringSetAttribute(attributedString, CFRangeMake(0, CFAttributedStringGetLength(attributedString)), kCTForegroundColorAttributeName, red)
    let framesetter: CTFramesetterRef = CTFramesetterCreateWithAttributedString(attributedString)
    
    let frame: CTFrameRef = CTFramesetterCreateFrame(framesetter, CFRangeMake(0, 0), path, nil)
    CTFrameDraw(frame, context!)
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  
  internal func configureConstraints() {
    
  }
  
  internal func setupViewHierarchy() {
    
  }

  
}
