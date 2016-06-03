//
//  ViewController.swift
//  BeautyGallery
//
//  Created by xupan on 16/6/1.
//  Copyright © 2016年 xphwv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let beauties=["范冰冰","李冰冰","王菲","杨幂","周迅"];
    
    @IBOutlet weak var selectBeauty: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        selectBeauty.dataSource=self
        selectBeauty.delegate=self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "goToGallery" {
            let index=selectBeauty.selectedRowInComponent(0);
            var imageName:String?;
            switch index {
            case 0:
                imageName="fanbingbing";
            case 1:
                imageName="libingbing";
            case 2:
                imageName="wangfei";
            case 3:
                imageName="yangmi";
            case 4:
                imageName="zhouxun";
            default:
                imageName=nil;
            }
            let vc=segue.destinationViewController as! GalleryViewController;
            vc.imageName=imageName;
        }
        
    }
    
    @IBAction func close(segue: UIStoryboardSegue){
        print("close")
    }


}

