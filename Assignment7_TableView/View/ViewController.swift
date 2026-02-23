//
//  ViewController.swift
//  Assignment7_TableView
//
//  Created by Colby Brown on 2/20/26.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    @IBOutlet weak var tableView: UITableView!
    
    var collegeLogic = CollegeLogic()
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return collegeLogic.getCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        content.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 2, leading: 10, bottom: 2, trailing: 10)
        content.text = collegeLogic.getCollege(at: indexPath.row)
        content.secondaryText = collegeLogic.getMascot(at: indexPath.row)
        
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { _, _, completion in
            print(self.collegeLogic.getDeleteMessage(at: indexPath.row))
            self.collegeLogic.removeCollege(at: indexPath.row)
            tableView.reloadData()
            completion(true)
        }
        
        let config = UISwipeActionsConfiguration(actions: [deleteAction])
        config.performsFirstActionWithFullSwipe = false
        return config
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toMascot", sender: self)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if view.frame.height < 500 {
            return 35
        }
        return UITableView.automaticDimension
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toMascot" {
           if let navigation = segue.destination as? MascotView, let indexPath = tableView.indexPathForSelectedRow {
               navigation.mascot = collegeLogic.getMascot(at: indexPath.row)
            }
        }
    }
    
    
    
}

