//
//  editView.swift
//  NewTodo
//
//  Created by t2023-m0049 on 2023/09/20.
//

import UIKit

class editView: UIViewController {

    //MARK: - Section Heading

    
    @IBOutlet weak var btnDelete: UIButton!
    //삭제버튼

    @IBOutlet weak var tbvEdit: UITableView!
    //편집페이지테이블뷰
    
    //MARK: - Section Heading

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //MARK: - 함수

    
    @IBAction func btnDelete(_ sender: Any) {
    }
    
}
