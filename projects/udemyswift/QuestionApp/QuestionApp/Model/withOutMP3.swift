//
//  withOutMP3.swift
//  QuestionApp
//
//  Created by 楠瀬大志 on 2020/11/01.
//

import Foundation

class withOutMP3: SoundFile {
    
    override func playSound(fileName: String, extensionName: String) {
        
        if extensionName == "mp3"{
            print("このファイルは再生できません")
        }
        player?.stop()
    }
    
}
