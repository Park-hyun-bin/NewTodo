//
//  ListView.swift
//  NewTodo
//
//  Created by t2023-m0049 on 2023/09/16.
//

import UIKit

class ListView: UIViewController {
    //MARK: - 여러변수들 선언
    
    @IBOutlet weak var tbList: UITableView!
    
    
    var items: [String] = ["apple", "facebook", "google", "kakao"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tbList.delegate = self
        tbList.dataSource = self
        
    }
}

extension ListView: UITableViewDelegate, UITableViewDataSource {
    
    public func numberOfSections(in tableView: UITableView) -> Int {
        return Array(Set(self.items.map{$0.first!})).count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return String(Array(Set(self.items.map{ $0.first!})).sorted()[section])
    }
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let charactor = Array(Set(self.items.map{$0.first!})).sorted()[section]
        return self.items.filter{$0.first! == charactor}.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let character = Array(Set(self.items.map{$0.first!})).sorted()[indexPath.section
        ]
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellList", for: indexPath)
        cell.textLabel?.text = self.items.filter{$0.first == character }[indexPath.row]
        return cell
    }
    
    
    
    
}
