//
//  ImagesModel.swift
//  QuestionApp
//
//  Created by 楠瀬大志 on 2020/10/29.
//

import Foundation

class ImagesModel {
    // 画像名を取得して、その画像名が人間かそうでないかをフラグによって判定するための機能
    
    let imageText:String?
    let answere:Bool
    
    init(imageName:String,correctOrNot:Bool){
        
        imageText = imageName
        
        answere = correctOrNot
    }
}
