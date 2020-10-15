//
//  ViewController.swift
//  calcapp
//
//  Created by 楠瀬大志 on 2020/10/11.
//

import UIKit

class ViewController: UIViewController {

    var carModel = Car()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button1(_ sender: Any) {
        
        carModel.drive()
        carModel.move(toback:"後ろにいくよ")
        let total = carModel.plusandminus(num1: carModel.frontwheel, num2: carModel.rearwheel)
        print("タイヤの合計数 \(total)")
        
        
    }
    
}

