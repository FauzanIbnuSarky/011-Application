//
//  BiodataTableViewController.swift
//  RPL 1
//
//  Created by Master on 2/11/17.
//  Copyright © 2017 Master. All rights reserved.
//

import UIKit

class BiodataTableViewController: UITableViewController {
    
    var tasks : [Biodata] = []
    
    var nameSelected: String?
    var addressSelected: String?
    var birthSelected: String?
    var schoolSelected: String?
    var classSelected: String?
    var ageSelected: String?
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tasks.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! BiodataTableViewCell
        
        let dataTask = tasks[indexPath.row]
        
        if let myDataTask = dataTask.name {
            cell.LabelName.text = myDataTask
        }
        if let myDataTask1 = dataTask.address {
            cell.LabelAddress.text = myDataTask1
        }
        if let myDataTask2 = dataTask.birth {
            cell.LabelBirth.text = myDataTask2
        }
        return cell
    }
    override func viewWillAppear(_ animated: Bool) {
        getData()
        tableView.reloadData()
    }
    
    func getData() {
        
        do {
            
            tasks = try context.fetch(Biodata.fetchRequest())
        } catch {
            print("Fetching Failed")
        }
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let task = tasks[indexPath.row]
            context.delete(task)
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            do {
                tasks = try context.fetch(Biodata.fetchRequest())
            } catch {
                print("Fetching Failed")
            }
        }
        tableView.reloadData()
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        //mengecek data yang dikirim
        print("Row \(indexPath.row)selected")
        
        let dataTask = tasks[indexPath.row]
        nameSelected = dataTask.name
        addressSelected = dataTask.address
        birthSelected = dataTask.birth
        schoolSelected = dataTask.school
        classSelected = dataTask.biodata_class
        ageSelected = dataTask.age
        performSegue(withIdentifier: "passData", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "passData"{
            let kirimData = segue.destination as! DetailBiodataViewController
            kirimData.passName = nameSelected
            kirimData.passAddress = addressSelected
            kirimData.passBirth = birthSelected
            kirimData.passSchool = schoolSelected
            kirimData.passClass = classSelected
            kirimData.passAge = ageSelected
        }
    }
    
}

