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
    
    var beautiesArray:[(Int,String,String)]=[];
    
    private func initOptions(){
        beautiesArray.append((1,"范冰冰","fanbingbing"));
        beautiesArray.append((2,"李冰冰","libingbing"));
        beautiesArray.append((3,"王菲","wangfei"));
        beautiesArray.append((4,"杨幂","yangmi"));
        beautiesArray.append((5,"李冰冰","libingbing"));
    }
    
    @IBOutlet weak var selectBeauty: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        selectBeauty.dataSource=self
        selectBeauty.delegate=self
        
        initOptions();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "goToGallery" {
            let index=selectBeauty.selectedRowInComponent(0);
//            var imageName:String?;
            var imageSelected:(Int,String,String)!;
            
            for  beautie in beautiesArray {
                if index==beautie.0{
                    imageSelected=beautie;
//                    imageName=beautie.2;
                }
            }
//            switch index {
//            case 0:
//                imageName="fanbingbing";
//            case 1:
//                imageName="libingbing";
//            case 2:
//                imageName="wangfei";
//            case 3:
//                imageName="yangmi";
//            case 4:
//                imageName="zhouxun";
//            default:
//                imageName=nil;
//            }
            let vc=segue.destinationViewController as! GalleryViewController;
            vc.imageSelected=imageSelected;
        }
        
    }
    
    @IBAction func close(segue: UIStoryboardSegue){
        print("close")
    }


}

