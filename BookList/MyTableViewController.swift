

import UIKit

class MyTableViewController: UITableViewController {
    let myFavoriteBooks = ["book1", "book2", "book3", "book4"]
    var tableData: Array<String> = Array[String]()
    let cellIdentifier = "MyBookIdentifier"
    var myTableViewController = UITableViewController.init()
    
    
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
        cell?.textLabel?.text = self.tableData[IndexPath.row]
        return cell!
        
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFavoriteBooks.count
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getDataFromURL(EbayAPI.serviceURL)
        
        
        
        
        
        
        
    }
    
    
}

