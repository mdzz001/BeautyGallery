//
//  ViewControllerExtension.swift
//  BeautyGallery
//
//  Created by xupan on 16/6/2.
//  Copyright © 2016年 xphwv. All rights reserved.
//

import UIKit
extension ViewController:UIPickerViewDataSource{

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1;
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return beautiesArray.count;
    }

}

extension ViewController:UIPickerViewDelegate{
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return beautiesArray[row].1;
    }

}
