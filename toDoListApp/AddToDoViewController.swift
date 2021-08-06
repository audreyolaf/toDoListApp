//
//  AddToDoViewController.swift
//  toDoListApp
//
//  Created by Scholar on 8/2/21.
//

import UIKit
import CoreData

class AddToDoViewController: UIViewController {
    var previousVC = ToDoTableViewController()
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func addTapped(_ sender: Any) {
//        let toDo = ToDo()
//
//        if let titleText = titleTextField.text {
//            toDo.name = titleText
//            toDo.important = importantSwitch.isOn
//        }
//
//        // update toDo array with new object
//        previousVC.toDos.append(toDo)
//        previousVC.tableView.reloadData()
//        navigationController?.popViewController(animated: true)
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        let context = appDelegate.persistentContainer.viewContext
        let toDo = ToDoCD(context: context)
        toDo.name = titleTextField.text
        toDo.important = importantSwitch.isOn
        
        appDelegate.saveContext()
        
        navigationController?.popViewController(animated: true)
    }
    

    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {        if let addVC = segue.destination as? AddToDoViewController {
//            addVC.previousVC = self;
//        }
//    }
    

}
