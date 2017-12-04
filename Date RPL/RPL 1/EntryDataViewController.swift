//
//  EntryDataViewController.swift
//  RPL 1
//
//  Created by Master on 2/11/17.
//  Copyright © 2017 Master. All rights reserved.
//

import UIKit

class EntryDataViewController: UIViewController {
    @IBOutlet weak var InputName: UITextField!
    @IBOutlet weak var InputAddress: UITextField!
    @IBOutlet weak var InputBirth: UITextField!
    @IBOutlet weak var InputSchool: UITextField!
    @IBOutlet weak var InputClass: UITextField!
    @IBOutlet weak var InputAge: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnSave(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let namaTask = Biodata(context: context)
        namaTask.name = InputName.text
        namaTask.address = InputAddress.text
        namaTask.birth = InputBirth.text
        namaTask.school = InputSchool.text
        namaTask.biodata_class = InputClass.text
        namaTask.age = InputAge.text!
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
