//
//  GalleryViewController.swift
//  BeautyGallery
//
//  Created by xupan on 16/6/2.
//  Copyright © 2016年 xphwv. All rights reserved.
//

import UIKit
import Social

class GalleryViewController: UIViewController {
    var imageName:String?
    
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if imageName != nil {
            image.image=UIImage(named: imageName!);
            navigationItem.title=imageName;
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func shareTO(){
        let controller:SLComposeViewController=SLComposeViewController(forServiceType: SLServiceTypeTencentWeibo)
        controller.setInitialText("女神画廊分享，http://.....")
        controller.addImage(image.image);
        self.presentViewController(controller, animated: true, completion: nil)
        print("aaaa")
    }
    
}
