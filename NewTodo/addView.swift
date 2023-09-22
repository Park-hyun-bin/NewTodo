//
//  addView.swift
//  NewTodo
//
//  Created by t2023-m0049 on 2023/09/19.
//

import UIKit

class addView: UIViewController {
    // MARK: - 변수선언

    @IBOutlet var lbDate: UILabel!
    //날짜라벨
    
    @IBOutlet weak var lbDow: UILabel!
    //요일라벨
    
    @IBOutlet weak var btnWeather: UIButton!
    //날짜 버튼
    
    @IBOutlet weak var tbvAdd: UITableView!
    //추가페이지테이블뷰
    
    @IBOutlet weak var btnDone: UIButton!
    //완료버튼
    
    //MARK: - cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        displayCurrentDay()
        displayCurrentDate()
    }
    
    func displayCurrentDay() {
           let currentDate = Date()
           let dateFormatter = DateFormatter()
           dateFormatter.dateFormat = "EEEE" // 요일만 가져오는 형식으로 설정
           // 현재 날짜의 요일을 문자열로 변환하여 라벨에 표시
           let dayOfWeekString = dateFormatter.string(from: currentDate)
        lbDow.text = dayOfWeekString
       }
    
    func displayCurrentDate() {
           let currentDate = Date()
           let dateFormatter = DateFormatter()
           dateFormatter.dateFormat = "yyyy-MM-dd" // 원하는 날짜 형식으로 설정
           // 날짜를 문자열로 변환하여 라벨에 표시
        lbDate.text = dateFormatter.string(from: currentDate)
       }
    
}
