//
//  ViewController.swift
//  seSACWeek2
//
//  Created by Seokjune Hong on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var buttonLabels: [UILabel]!
    var countArray = Array(repeating: 0, count: 9)
    let emotionArray = ["행복해", "사랑해", "좋아해", "당황해", "속상해", "우울해", "심심해", "행복해", "슬퍼해"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        for item in buttonLabels {
//            print(item.tag)
//        }
//        showAlertController()
//        happyLabel.text = setUserNickname()
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        print(sender.tag)
        countArray[sender.tag] += 1
        buttonLabels[sender.tag].text = "\(emotionArray[sender.tag])" + "\(countArray[sender.tag])"
    }

    func setUserNickname() -> String {
        let nickname = ["hi", "아", "aa"]
        let select = "\(nickname.randomElement()!)"


        return select
    }

    func example() -> (UIColor, String, String) {
        let color: [UIColor] = [.yellow, .orange, .blue, .white]
        let image: [String] = ["sesac_slime1", "sesac_slime2", "sesac_slime3", "sesac_slime4"]

        return (color.randomElement()!, "고래밥", image.randomElement()!)
    }

    func showAlertController() {
//    1. 흰 바탕: UIAlertController
        let alert = UIAlertController(title: "타이틀", message: "여기는 메시지가 들어갑니다", preferredStyle: .alert)

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

