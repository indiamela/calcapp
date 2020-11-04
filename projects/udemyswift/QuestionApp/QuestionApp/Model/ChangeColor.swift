//
//  ChangeColor.swift
//  QuestionApp
//
//  Created by 楠瀬大志 on 2020/11/02.
//

import Foundation
import UIKit

class ChangeColor {
    func changeColor(topR:CGFloat,topG:CGFloat,topB:CGFloat,topAlfa:CGFloat,bottomR:CGFloat,bottomG:CGFloat,bottomB:CGFloat,bottomAlfa:CGFloat) -> CAGradientLayer{
        
        //グラデーションの開始色
        let topColor = UIColor(red:topR,green: topG,blue: topB,alpha: topAlfa)
        let bottomColor = UIColor(red:bottomR,green: bottomG,blue: bottomB,alpha: bottomAlfa)
        
        //グラデーションの色を配列で管理する
        let gradientColor = [topColor.cgColor, bottomColor.cgColor]
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColor
        
        return gradientLayer
        
    }
}

