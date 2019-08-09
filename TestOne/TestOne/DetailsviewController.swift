
import UIKit

class DetailsviewController: UIViewController,UITableViewDelegate,UITableViewDataSource,CustomCellDelegate {
    
   let documentDirectory = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
    var listpath = ""
    
    
   let  path = Bundle.main.path(forResource: "profile", ofType: "plist")
    let filemanager = FileManager.default
    var dictArray:NSMutableArray = []
    var isWritten:Bool = false
    
    var index:Int = -1
    var indexdata:Any = ""
    var birthDaypick = UIDatePicker()
    var datePickerDate : String?
    @IBOutlet weak var submit: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    var labels = ["Name","EmpId","Designation","BirthDay"]
    
    var dictionary = [String :Any]()
    var fullcell: CustomCell? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        
    listpath = documentDirectory.appending("profile.plist")
        
        let gesture=UITapGestureRecognizer(target: self, action: #selector(tapped(sender:)))
        view.addGestureRecognizer(gesture)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return labels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let partcell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath) as! CustomCell
        fullcell? = partcell
        partcell.detailField.placeholder = labels[indexPath.row]
        partcell.delegate = self
        
        if indexPath.row == 3 {
            if datePickerDate != nil {
                partcell.detailField.text = datePickerDate
            }

        }
        
       print(partcell.detailField.text!)
        
        return partcell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100
    }
    
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
    
    func didSlectedTextFieldInCustomCellIndexpath(customeCell: CustomCell, indexPath: IndexPath) {
        if indexPath.row == 3 {
            customeCell.detailField.inputView = birthDaypick
            birthDaypick.datePickerMode = .date
           birthDaypick.addTarget(self, action: #selector(showPicker(sender: )), for: .valueChanged)
          
        }
    }

    
    
    @IBAction func submit(_ sender: Any) {
        
    
        for i in 0..<(labels.count)
        {
            let index = IndexPath(row: i, section: 0)
            let cell: CustomCell = self.tableView.cellForRow(at: index) as! CustomCell
            fullcell = cell
            if (cell.detailField.text!) != ""
                 {
                     dictionary[labels[i]] = cell.detailField.text!
            }else{
           
                let alert = UIAlertController(title:"Empty Fields" , message: "Please fill all Fields!", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title:"ok",style:UIAlertAction.Style.cancel, handler:nil))
                self.present(alert, animated: true, completion: nil)
                return
            }
            
        }
        
            if !filemanager.fileExists(atPath: listpath)
            {
                    dictArray.add(dictionary)
                    isWritten = dictArray.write(toFile:  path!, atomically: true)
                do{
                    try? filemanager.copyItem(atPath: path!, toPath:listpath)
                }
                    navigate()
            
            }
  
              dictArray = NSMutableArray(contentsOfFile: listpath)!
               dictArray.add(dictionary)
               isWritten = dictArray.write(toFile:listpath, atomically: true)
               navigate()
        
    }
   
    
    @objc func showPicker(sender: UIDatePicker ){
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = DateFormatter.Style.short // "long" gives month name
        datePickerDate = dateFormatter.string(from: birthDaypick.date)
        tableView.reloadData()
    }
    
    @objc func tapped(sender: UITapGestureRecognizer){
        view.endEditing(true)
    }
    
   func navigate(){
    if let viewController = UIStoryboard(name:"Main", bundle: nil).instantiateViewController(withIdentifier: "MainVC") as? CellDetailsView {
        
        if let navigator = navigationController
        {
            navigator.pushViewController(viewController, animated: true)
        }
    }
    }
   
    
}

    
    
    

    
    
    
    
    
    


