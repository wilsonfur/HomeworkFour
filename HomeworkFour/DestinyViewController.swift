//
//  DestinyViewController.swift
//  HomeworkFour
//
//  Created by wilson on 2017/11/7.
//  Copyright © 2017年 wilson. All rights reserved.
//

import UIKit
import Foundation
class DestinyViewController: UIViewController {

    @IBOutlet weak var questionAndAnswer: UILabel!
    @IBOutlet weak var answerField: UITextField!

    @IBAction func submit(_ sender: Any) {
        let userAnswer = ("\(answerField)")
        if userAnswer.contains("真愛")
            || userAnswer.contains("天子")
            || userAnswer.contains("男神")
            || userAnswer.contains("白馬王子")
        {
            questionAndAnswer.text = "有緣千里來相會，恭喜你找到意中人！"
        } else if answerField.text == "" {
            questionAndAnswer.text = "快寫點什麼，讓我幫你測測速配指數！"
        } else {
            questionAndAnswer.text = "你不是有緣人...再試試！"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
}
