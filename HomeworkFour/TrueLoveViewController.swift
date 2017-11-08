//
//  TrueLoveViewController.swift
//  HomeworkFour
//
//  Created by wilson on 2017/11/7.
//  Copyright © 2017年 wilson. All rights reserved.
//

import UIKit

class TrueLoveViewController: UIViewController {
    @IBOutlet weak var titleTrueLove: UILabel!
    override func viewDidLoad() {
        //navigation改透明顯示
        super.viewDidLoad()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
    }
    //設置 Outlet連線
    @IBOutlet weak var answerImage: UIImageView!
    @IBOutlet weak var optionFace: UISlider!
    @IBOutlet weak var optionAge: UISlider!
    @IBOutlet weak var optionMoney: UISlider!
    
    //function函式
    @IBAction func optionFace(_ sender: UISlider) {
        //UISlider改為自動貼齊區段的方式
        optionFace.value = roundf(optionFace.value)
        optionAge.value = roundf(optionAge.value)
        optionMoney.value = roundf(optionMoney.value)
        
        
        let face = Int(optionFace.value)
        let age = Int(optionAge.value)
        let money = Int(optionMoney.value)
        //讓回傳的值變為字串，顯示在圖片檔名中
        let imageFileName = "img\(face)\(age)\(money)"
        
        //讓UIImageView的圖片等於回傳的字串檔名，感謝同事nelson的提示
        answerImage.image = UIImage(named:imageFileName)
        //print(imageFileName)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
