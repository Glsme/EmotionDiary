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
    
}

