//
//  CellDetailsView.swift
//  TestOne
//
//  Created by bharath gaddamadugu on 18/07/19.
//  Copyright © 2019 bharath gaddamadugu. All rights reserved.
//

import UIKit

class CellDetailsView: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var  documentDirectory = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
    var path = ""
//    let path = Bundle.main.path(forResource: "profile", ofType: "plist")
    let filemanager = FileManager.default
    
    @IBOutlet weak var tableView: UITableView!
        var open:Bool = false
    var selectedIndex:Int = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        path = documentDirectory.appending("profile.plist")
       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var numOfRows:Int?
        
        if filemanager.fileExists(atPath: path){
            var nsmutableArray = NSMutableArray(contentsOfFile: path)
           numOfRows = nsmutableArray!.count
            return numOfRows!
            }
        return 0
        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tablecell",for: indexPath) as! DetailedCell
        
        if filemanager.fileExists(atPath: path){
            
            var nsmutableArray = NSMutableArray(contentsOfFile: path)
            
        var dictionary = [String:Any]()

         
            if let dictionary = nsmutableArray![indexPath.row] as? [String : Any]{
              cell.name.text = dictionary["Name"] as? String
              cell.id.text = dictionary["EmpId"] as? String
              cell.dob.text = dictionary["BirthDay"] as? String
              cell.designation.text = dictionary["Designation"] as? String
          }
           
        }else{
            print("no path")
        }
        
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       selectedIndex = indexPath.row
        open = true
        tableView.self.reloadData()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        if  selectedIndex == indexPath.row {
            
            return 200

        }else{
        return 40
        }
    }
    

   

}
