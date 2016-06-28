//: Playground - noun: a place where people can play

import UIKit

var textStorage: NSTextStorage = NSTextStorage(string: "This is the Test String. And should it go longer, I'm hoping the overflow is handled properlyThis is the Test String. And should it go longer, I'm hoping the overflow is handled properlyThis is the Test String. END")
var layoutManager: NSLayoutManager = NSLayoutManager()
var arialTextContainer: NSTextContainer = NSTextContainer(size: CGSizeMake(200.0, 50.0))
var menloTextContainer: NSTextContainer = NSTextContainer(size: CGSizeMake(200.0, 50.0))

textStorage.addLayoutManager(layoutManager)

layoutManager.addTextContainer(arialTextContainer)
layoutManager.addTextContainer(menloTextContainer)

var testArialTextView: UITextView = UITextView(frame: CGRectMake(0,0,200,50), textContainer: arialTextContainer)


var testMenloTextView: UITextView = UITextView(frame: CGRectMake(200, 50, 200, 50), textContainer: menloTextContainer)
testMenloTextView

var testView = UIView(frame: CGRectMake(0,0,420,120))
testView.addSubview(testArialTextView)
testView.addSubview(testMenloTextView)
testView.backgroundColor = UIColor.redColor()


testView