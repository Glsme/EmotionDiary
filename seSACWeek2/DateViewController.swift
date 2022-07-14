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
        
        // yyyy MM dd hh:mm:ss
        let format = DateFormatter()
        format.dateFormat = "M월 d일 yy년"
        
        let result = format.string(from: Date() )
        print(result)
        
//        let word = "3월 2일, 19년"
//        let dateResult = format.date(from: word)
//
//        print(dateResult)

    }
    
    func makeDateImageViewUI() {
        for item in dateImageViewArray {
            makeImageViewUI(item)
        }
    }
    
    func makeImageViewUI(_ imageView: UIImageView) {
        imageView.layer.cornerRadius = 10
    }
    
    @IBAction func userDatePickerChanged(_ sender: UIDatePicker) {
        let swiftDatePickerView = sender
        
        let dateFormat: DateFormatter = {
            let f = DateFormatter()
            f.dateStyle = .long
            f.timeStyle = .short
            f.locale = Locale(identifier: "Ko_kr")
            
            return f
        }()
        
        print(dateFormat.string(from: swiftDatePickerView.date))
    }
}
