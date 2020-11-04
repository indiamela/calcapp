//
//  Human.swift
//  QuestionApp
//
//  Created by 楠瀬大志 on 2020/11/01.
//

import Foundation

class Human:Animal{
    
    override func breath() {
        super.breath()
        profile()
        
    }
    
    func profile(){
        print("私は楠瀬大志です")
    }
}
