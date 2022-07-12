//
//  ViewController.swift
//  seSACWeek2
//
//  Created by Seokjune Hong on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var buttonLabels: [UILabel]!
    var countArray = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
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
        
        switch sender.tag {
        case 0:
            countArray[0] += 1
            buttonLabels[0].text = "행복해 \(countArray[0])"
        case 1:
            countArray[1] += 1
            buttonLabels[1].text = "사랑해 \(countArray[1])"
        case 2:
            countArray[2] += 1
            buttonLabels[2].text = "좋아해 \(countArray[2])"
        case 3:
            countArray[3] += 1
            buttonLabels[3].text = "당황해 \(countArray[3])"
        case 4:
            countArray[4] += 1
            buttonLabels[4].text = "속상해 \(countArray[4])"
        case 5:
            countArray[5] += 1
            buttonLabels[5].text = "우울해 \(countArray[5])"
        case 6:
            countArray[6] += 1
            buttonLabels[6].text = "심심해 \(countArray[6])"
        case 7:
            countArray[7] += 1
            buttonLabels[7].text = "행복해 \(countArray[7])"
        case 8:
            countArray[8] += 1
            buttonLabels[8].text = "슬퍼해 \(countArray[8])"
        
        default:
            break
        }
        
    }

//    func setUserNickname() -> String {
//        let nickname = ["hi", "아", "aa"]
//        let select = nickname.randomElement()!
//
//
//        return "\(select)"
//    }
//
//    func example() -> (UIColor, String, String) {
//        let color: [UIColor] = [.yellow, .orange, .blue, .white]
//        let image: [String] = ["sesac_slime1", "sesac_slime2", "sesac_slime3", "sesac_slime4"]
//
//        return (color.randomElement()!, "고래밥", image.randomElement()!)
//    }
//
//    func showAlertController() {
////    1. 흰 바탕: UIAlertController
//        let alert = UIAlertController(title: "타이틀", message: "여기는 메시지가 들어갑니다", preferredStyle: .actionSheet)
//
////        2.버튼
//        let ok = UIAlertAction(title: "확인", style: .default, handler: nil)
//        let cancel = UIAlertAction(title: "취소", style: .destructive, handler: nil)
//        let web = UIAlertAction(title: "열기", style: .cancel, handler: nil)
//        let copy = UIAlertAction(title: "복사", style: .default, handler: nil)
//
////        3. 1+2
//        alert.addAction(copy)
//        alert.addAction(web)
//        alert.addAction(cancel)
//        alert.addAction(ok)
//
////        4. present
//        present(alert, animated: true, completion: nil)
//    }
    
}

