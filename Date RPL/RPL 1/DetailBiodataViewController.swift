//
//  DetailBiodataViewController.swift
//  RPL 1
//
//  Created by Master on 2/11/17.
//  Copyright © 2017 Master. All rights reserved.
//

import UIKit

class DetailBiodataViewController: UIViewController {
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var lblBirth: UILabel!
    @IBOutlet weak var lblSchool: UILabel!
    @IBOutlet weak var lblClass: UILabel!
    @IBOutlet weak var lblAge: UILabel!
    
    var passName: String?
    var passAddress: String?
    var passBirth: String?
    var passSchool: String?
    var passClass: String?
    var passAge: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblName.text = "halloooooo!! " + passName!
        lblAddress.text = passAddress!
        lblBirth.text = passBirth!
        lblSchool.text = passSchool!
        lblClass.text = passClass!
        lblAge.text = passAge!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
