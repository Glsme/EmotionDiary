//
//  DateViewController.swift
//  seSACWeek2
//
//  Created by Seokjune Hong on 2022/07/13.
//

import UIKit

class DateViewController: UIViewController {

    @IBOutlet var dateImageViewArray: [UIImageView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeDateImageViewUI()

    }
    
    func makeDateImageViewUI() {
        for item in dateImageViewArray {
            makeImageViewUI(item)
        }
    }
    
    func makeImageViewUI(_ imageView: UIImageView) {
        imageView.layer.cornerRadius = 10
    }
}
