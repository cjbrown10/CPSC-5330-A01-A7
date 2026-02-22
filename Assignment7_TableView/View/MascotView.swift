//
//  MascotView.swift
//  Assignment7_TableView
//
//  Created by Colby Brown on 2/20/26.
//

import UIKit

class MascotView: UIViewController {

    @IBOutlet weak var mascotLabel: UILabel!
    
    var mascot = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        mascotLabel.text = mascot
    }
    
    
    @IBAction func resetPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
