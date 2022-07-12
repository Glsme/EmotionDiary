//
//  ViewController.swift
//  seSACWeek2
//
//  Created by Seokjune Hong on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var happyLabel: UILabel!
    @IBOutlet weak var loveLabel: UILabel!
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var panicLabel: UILabel!
    @IBOutlet weak var sadLabel: UILabel!
    @IBOutlet weak var depressedLabel: UILabel!
    @IBOutlet weak var boredLabel: UILabel!
    @IBOutlet weak var offendLabel: UILabel!
    @IBOutlet weak var tearsLabel: UILabel!

    
    
    var happyCount = 0, loveCount = 0, likeCount = 0, panicCount = 0, sadCount = 0, depressedCount = 0, boredCount = 0 , offendCount  = 0, tearsCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        showAlertController()
//        happyLabel.text = setUserNickname()
    }
    
    func setUserNickname() -> String {
        let nickname = ["hi", "아", "aa"]
        let select = nickname.randomElement()!
        
        
        return "\(select)"
    }
    
    func example() -> (UIColor, String, String) {
        let color: [UIColor] = [.yellow, .orange, .blue, .white]
        let image: [String] = ["sesac_slime1", "sesac_slime2", "sesac_slime3", "sesac_slime4"]
        
        return (color.randomElement()!, "고래밥", image.randomElement()!)
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        print(sender.currentImage)
    }
    
    @IBAction func happyButtonClicked(_ sender: UIButton) {
        happyCount += 1
        happyLabel.text = "행복해 \(happyCount)"
    }
    
    @IBAction func loveButtonClicked(_ sender: UIButton) {
        loveCount += 1
        loveLabel.text = "사랑해 \(loveCount)"
    }
    
    @IBAction func likeButtonClicked(_ sender: UIButton) {
        likeCount += 1
        likeLabel.text = "좋아해 \(likeCount)"
    }
    
    @IBAction func panicButtonClicked(_ sender: UIButton) {
        panicCount += 1
        panicLabel.text = "당황해 \(panicCount)"
    }
    
    @IBAction func sadButtonClicked(_ sender: UIButton) {
        sadCount += 1
        sadLabel.text = "속상해 \(sadCount)"
    }
    
    @IBAction func depressedButtonClicked(_ sender: UIButton) {
        depressedCount += 1
        depressedLabel.text = "우울해 \(depressedCount)"
    }
    
    @IBAction func boredButtonClicked(_ sender: UIButton) {
        boredCount += 1
        boredLabel.text = "심심해 \(boredCount)"
    }
    
    @IBAction func offendButtonClicked(_ sender: UIButton) {
        offendCount += 1
        offendLabel.text = "언짢해 \(offendCount)"
    }
    
    @IBAction func tearsButtonClicked(_ sender: UIButton) {
        tearsCount += 1
        tearsLabel.text = "슬퍼해 \(tearsCount)"
    }
    
    func showAlertController() {
//    1. 흰 바탕: UIAlertController
        let alert = UIAlertController(title: "타이틀", message: "여기는 메시지가 들어갑니다", preferredStyle: .actionSheet)
        
//        2.버튼
        let ok = UIAlertAction(title: "확인", style: .default, handler: nil)
        let cancel = UIAlertAction(title: "취소", style: .destructive, handler: nil)
        let web = UIAlertAction(title: "열기", style: .cancel, handler: nil)
        let copy = UIAlertAction(title: "복사", style: .default, handler: nil)

//        3. 1+2
        alert.addAction(copy)
        alert.addAction(web)
        alert.addAction(cancel)
        alert.addAction(ok)
        
//        4. present
        present(alert, animated: true, completion: nil)
    }
    
}

