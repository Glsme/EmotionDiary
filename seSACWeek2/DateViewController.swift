//
//  DateViewController.swift
//  seSACWeek2
//
//  Created by Seokjune Hong on 2022/07/13.
//

import UIKit

class DateViewController: UIViewController {

    @IBOutlet var dateImageViewArray: [UIImageView]!
    @IBOutlet weak var after100DaysLabel: UILabel!
    @IBOutlet weak var after200DaysLabel: UILabel!
    @IBOutlet weak var after300DaysLabel: UILabel!
    @IBOutlet weak var after400DaysLabel: UILabel!
    @IBOutlet weak var datePickerValue: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        makeDateImageViewUI()
        
//        print(dateFormat.string(from: datePickerValue.date))
        
        // 처음 화면 출력 시 Label에 오늘 날짜로 계산
        printDateLabelUI(dateFormat: dateFormat, targetDay: calculateDate(date: 100), label: after100DaysLabel)
        printDateLabelUI(dateFormat: dateFormat, targetDay: calculateDate(date: 200), label: after200DaysLabel)
        printDateLabelUI(dateFormat: dateFormat, targetDay: calculateDate(date: 200), label: after300DaysLabel)
        printDateLabelUI(dateFormat: dateFormat, targetDay: calculateDate(date: 200), label: after400DaysLabel)
    }
    
    func makeDateImageViewUI() {
        for item in dateImageViewArray {
            makeImageViewUI(item)
        }
    }
    
    func makeImageViewUI(_ imageView: UIImageView) {
        imageView.layer.cornerRadius = 20
    }
    
    let dateFormat: DateFormatter = {
        let f = DateFormatter()
        f.dateStyle = .long
        f.timeStyle = .none
        f.locale = Locale(identifier: "Ko_kr")
        
        return f
    }()
    
    // Date Picker value changed
    @IBAction func userDatePickerChanged(_ sender: UIDatePicker) {
//        print(dateFormat.string(from: swiftDatePickerView.date))
        
        let after100Days = calculateDate(date: 100)
        let after200Days = calculateDate(date: 200)
        let after300Days = calculateDate(date: 300)
        let after400Days = calculateDate(date: 400)
        
//        print(dateFormat.string(from: after100Days!))
//        print(dateFormat.string(from: after200Days!))
//        print(dateFormat.string(from: after300Days!))
//        print(dateFormat.string(from: after400Days!))
        
        printDateLabelUI(dateFormat: dateFormat, targetDay: after100Days, label: after100DaysLabel)
        printDateLabelUI(dateFormat: dateFormat, targetDay: after200Days, label: after200DaysLabel)
        printDateLabelUI(dateFormat: dateFormat, targetDay: after300Days, label: after300DaysLabel)
        printDateLabelUI(dateFormat: dateFormat, targetDay: after400Days, label: after400DaysLabel)


        
    }
    
    // label에 날짜 계산하여 넣는 함수
    func printDateLabelUI(dateFormat: DateFormatter, targetDay: Date, label: UILabel) {
        label.text = dateFormat.string(from: targetDay)
    }
    
    // 날짜 계산 함수
    func calculateDate(date: Int) -> Date {
        return datePickerValue.calendar.date(byAdding: .day, value: date, to: datePickerValue.date)!
    }
}
