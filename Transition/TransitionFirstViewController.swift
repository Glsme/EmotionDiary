//
//  TransitionFirstViewController.swift
//  seSACWeek2
//
//  Created by Seokjune Hong on 2022/07/15.
//

import UIKit

class TransitionFirstViewController: UIViewController {

    @IBOutlet weak var mottoTextView: UITextView!
    
    /*
     1. 앱이 켜지면 데이터를 가지고 와서 텍스트 뷰에 보여주어야 함.
     2. 바뀐 데이터를 저장.
     => User Default
     
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        print(#function)
        
        // 가져오기
        if UserDefaults.standard.string(forKey: "nickname") == nil {
            mottoTextView.text = "글을 입력하여 주세요"
        } else {
            mottoTextView.text = UserDefaults.standard.string(forKey: "nickname")
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        print(#function)

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        print(#function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
//        print(#function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
//        print(#function)
    }
    
    @IBAction func saveButtonClicked(_ sender: UIButton) {
        UserDefaults.standard.set(mottoTextView.text, forKey: "nickname")
        print("저장되었습니다")
    }
    
    @IBAction func unwindTransitionFirstVC(segue: UIStoryboardSegue) {
        
    }
}
