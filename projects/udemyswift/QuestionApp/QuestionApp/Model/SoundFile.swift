//
//  SoundFile.swift
//  QuestionApp
//
//  Created by 楠瀬大志 on 2020/11/01.
//

import Foundation
import AVFoundation  //音声が使えるようになる


class SoundFile{
    
    var player:AVAudioPlayer?
    
    func playSound(fileName:String,extensionName:String){
        
        //再生する
        let soundURL = Bundle.main.url(forResource: fileName, withExtension: extensionName)
        //ファイルの名前を設定
        
        do {
            
            player = try AVAudioPlayer(contentsOf: soundURL!)
            player?.play()
            
        } catch {
            
            print("エラーです")
            
        }
        
    }
}
