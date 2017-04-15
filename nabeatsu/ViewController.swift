//
//  ViewController.swift
//  nabeatsu
//
//  Created by litech on 2015/03/11.
//  Copyright (c) 2015年 litech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var number: Int = 0
    @IBOutlet var label: UILabel!
    @IBOutlet var faceLabel: UILabel!
    @IBOutlet var checkLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = String(0)
    }
    
    func isAho() ->Int{
        var checkAho: Int = 0
  
        if number % 7 == 0{
            checkAho = 7
        }else if number % 5 == 0{
            checkAho = 5
        }else if number % 3 == 0{
            checkAho = 3
        }else{
            var checkNum: Int
            checkNum = number
            while checkNum != 0 {
                checkLabel.text = String(checkNum)
                if checkNum % 10 == 3 {
                    checkAho = 3
                    break
                }else{
                    checkNum /= 10
                }
            }
        }
        return checkAho
    }
    
    @IBAction func plusButton(){
        number = number + 1
        label.text = String(number)
        if isAho() == 3 {
            faceLabel.text = "ﾍ(ﾟ∀ﾟﾍ)ｱﾋｬ"
        }else if isAho() == 7{
            faceLabel.text = "なな"
        }else if isAho() == 5{
            faceLabel.text = "犬"
        }else if isAho() == 0{
            faceLabel.text = "(゜o゜)"
        }
    }
    
    @IBAction func clear(){
        number = 0;
        label.text = String(number)
        faceLabel.text = "(゜o゜)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
