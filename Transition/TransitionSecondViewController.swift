//
//  TransitionSecondViewController.swift
//  seSACWeek2
//
//  Created by Seokjune Hong on 2022/07/15.
//

import UIKit

class TransitionSecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("2: \(#function)")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("2: \(#function)")

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("2: \(#function)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("2: \(#function)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("2: \(#function)")
    }

}
