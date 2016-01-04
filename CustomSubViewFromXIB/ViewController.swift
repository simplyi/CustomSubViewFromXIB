//
//  ViewController.swift
//  CustomSubViewFromXIB
//
//  Created by Sergey Kargopolov on 2015-04-05.
//  Copyright (c) 2015 Sergey Kargopolov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myCustomSubview: MyCustomView!
    
    
    var mySubview:MyCustomView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myCustomSubview.myButton.addTarget(self, action: "myButtonTapped2:", forControlEvents: UIControlEvents.TouchUpInside)
    
  
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func myButtonTapped(sender:UIButton)
    {
        print("Custom subview button 2 tapped")
       mySubview.view.removeFromSuperview()
    }

    @IBAction func showSubviewButtonTapped(sender: AnyObject) {
        
        if(mySubview != nil && !mySubview.view.hidden)
        {
           mySubview.view.removeFromSuperview()
        }
        
 
 
        mySubview = MyCustomView(frame: CGRect(x:10,y:300, width:275, height:147))
        
        mySubview.titleLabel.text = "My custom title"
        
        let catImage = UIImage(named: "cat1.jpeg")
        mySubview.myImage.image = catImage;
    
        mySubview.myButton.setTitle("Hide", forState: UIControlState.Normal)
        mySubview.myButton.addTarget(self, action: "myButtonTapped:", forControlEvents: UIControlEvents.TouchUpInside)
        
        
        self.view.addSubview(mySubview)
    }
    
    func myButtonTapped2(sender:UIButton)
    {
        print("Custom subview button 1 tapped")
    }


}

