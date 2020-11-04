//
//  ViewController.swift
//  QuestionApp
//
//  Created by 楠瀬大志 on 2020/10/28.
//

import UIKit

class ViewController: UIViewController,NowScoreDelegate {
    

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var maxScoreLabel: UILabel!
    
    var correctCount = 0
    var wrongCount = 0
    var maxScore = 0
    var questionNumber = 0
    
    
    let imagesList = ImagesList()
    
    //IBActionで検知した正当がどちらなのかを取得するメソッド
    var pickedAnswere = false
    
    var soundFile = SoundFile()  //メモ：classを変数に代入するときは同一の名前ではだめ！
    
    var changeColor = ChangeColor()
    
    var gradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        //overrideとはクラスを上書きすること
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        gradientLayer = changeColor.changeColor(topR: 0.07, topG: 0.13, topB: 0.26, topAlfa: 1.0, bottomR: 0.54, bottomG: 0.74, bottomB: 0.74, bottomAlfa: 1.0)
        
        gradientLayer.frame = view.bounds
        
        view.layer.insertSublayer(gradientLayer, at: 0)
        
        imageView.layer.cornerRadius = 20.0
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //NextViewControllerから戻ってきた時に持ってくる値
        correctCount = 0
        wrongCount = 0
        questionNumber = 0
        
        imageView.image = UIImage(named: imagesList.list[0].imageText!)
        
        if UserDefaults.standard.object(forKey: "beforeCount") != nil{
            maxScore = UserDefaults.standard.object(forKey: "beforeCount") as! Int
        }
        
        maxScoreLabel.text = String(maxScore)
    }

    @IBAction func answere(_ sender: Any) {
        //タグで識別している
        if (sender as AnyObject).tag == 1 {
            
            pickedAnswere = true
            
            
        } else if (sender as AnyObject).tag == 2 {
            
            pickedAnswere = false
        
            
        }
        
    //チェック　解答があっているか（pickedAnswereとImagesListのcorrectOrNotが値が言い値しているかどうか
        check()
    }
    
    func check(){
        let correctAnswere = imagesList.list[questionNumber].answere
        
        if correctAnswere == pickedAnswere{
            print("正解")
            soundFile.playSound(fileName: "maruSound", extensionName: "mp3")
            correctCount = correctCount + 1
        } else {
            print("不正解")
            soundFile.playSound(fileName: "batsuSound", extensionName: "mp3")
            wrongCount = wrongCount + 1
        }
        nextQuestions()

    }
    func nextQuestions(){
        if questionNumber <= 9{
            questionNumber = questionNumber + 1
            imageView.image = UIImage(named: imagesList.list[questionNumber].imageText!)
        }else{
            print("問題終了")
            performSegue(withIdentifier: "next", sender: nil)
            //遷移先を指定する
            
        }
    }
    
    func nowScore(score: Int) {
        maxScoreLabel.text = String(score)
        soundFile.playSound(fileName: "sound", extensionName: "mp3")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //prepareforsegueが呼ばれた後に呼ばれる
        //遷移先に送るデータをセット
        
        if segue.identifier == "next" {
            
            let nextVC = segue.destination as! NextViewController
            
            nextVC.correctedCount = correctCount
            nextVC.wrongCount = wrongCount
            nextVC.delegate = self
            
        }
        
        
    }
    
    
}

