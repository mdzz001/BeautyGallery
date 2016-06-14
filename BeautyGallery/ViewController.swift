//
//  ViewController.swift
//  BeautyGallery
//
//  Created by xupan on 16/6/1.
//  Copyright © 2016年 xphwv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var beautiesArray:[(Int,String,String)]=[];
    
    private func initOptions(){
        beautiesArray.append((0,"范冰冰","fanbingbing"));
        beautiesArray.append((1,"李冰冰","libingbing"));
        beautiesArray.append((2,"王菲","wangfei"));
        beautiesArray.append((3,"杨幂","yangmi"));
        beautiesArray.append((4,"周迅","zhouxun"));
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

            var imageSelected:(Int,String,String)!;
            
            for  beautie in beautiesArray {
                if index==beautie.0{
                    imageSelected=beautie;
                }
            }
//            var imageName:String?;
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

