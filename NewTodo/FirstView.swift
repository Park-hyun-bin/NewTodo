//
//  FirstView.swift
//  NewTodo
//
//  Created by t2023-m0049 on 2023/09/16.
//

import UIKit

class FirstView: UIViewController {

    //MARK: - 여러변수들 선언

    
    @IBOutlet weak var dateLb: UILabel!
    // 날짜
    
    @IBOutlet weak var dotwLb: UILabel!
    // 요일
    
    @IBOutlet weak var tvListToday: UITableView!
    // 오늘할일 리스트
    
    @IBOutlet weak var btnGoList: UIButton!
    // 리스트로이동하는 버튼
    
    
    
    //MARK: - 생명주기 시작

    override func viewDidLoad() {
        super.viewDidLoad()

        displayCurrentDate()
        displayCurrentDay()
    }
    
    
    //MARK: - 여러 함수
    func displayCurrentDate() {
            let currentDate = Date()
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd" // 원하는 날짜 형식으로 설정
            // 날짜를 문자열로 변환하여 라벨에 표시
            dateLb.text = dateFormatter.string(from: currentDate)
        }
    func displayCurrentDay() {
            let currentDate = Date()
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "EEEE" // 요일만 가져오는 형식으로 설정
            // 현재 날짜의 요일을 문자열로 변환하여 라벨에 표시
            let dayOfWeekString = dateFormatter.string(from: currentDate)
            dotwLb.text = dayOfWeekString
        }
    
    
    
    
    
    
    
}


    //MARK: - 익스텐션 함수

