//
//  ViewController.swift
//  ProgrammacticAutolayoutText
//
//  Created by Trieu Nguyen on 8/18/15.
//  Copyright (c) 2015 Trieu Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        // Create our label
        var myLabel:UILabel = UILabel()
        myLabel.text = "Hello World"
        myLabel.backgroundColor = UIColor.blueColor()
        myLabel.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Put label into the view
        self.view.addSubview(myLabel)
        
        //  Create and add size constraints
        var heightConstraint:NSLayoutConstraint = NSLayoutConstraint(item: myLabel, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 21)
        
        var widthConstraint:NSLayoutConstraint = NSLayoutConstraint(item: myLabel, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 200)
        
        myLabel.addConstraints([heightConstraint, widthConstraint])
        
        // Create and add position constraints
        var leftMarginConstraint:NSLayoutConstraint = NSLayoutConstraint(item: myLabel, attribute: NSLayoutAttribute.Leading, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Leading, multiplier: 1, constant: 100)

        var topMarginConstraint:NSLayoutConstraint = NSLayoutConstraint(item: myLabel, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Top, multiplier: 1, constant: 100)

        self.view.addConstraints([leftMarginConstraint, topMarginConstraint])
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

