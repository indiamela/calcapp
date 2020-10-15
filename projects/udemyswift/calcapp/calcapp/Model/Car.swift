//
//  Car.swift
//  calcapp
//
//  Created by 楠瀬大志 on 2020/10/11.
//

import Foundation

class Car {
    
    var frontwheel = 0
    var rearwheel = 0
    
    init(){ //イニシャライズ＝初期化
        frontwheel = 2
        rearwheel = 2
    }
    
    func drive(){
        print("運転開始")
        print("前輪 \(frontwheel)")
        print("後輪 \(rearwheel)")
    }
    
    func move(toback:String){
        print(toback)
    }
    
    func plusandminus(num1:Int,num2:Int) -> Int{
        return num1 + num2
        
    }
    
}
