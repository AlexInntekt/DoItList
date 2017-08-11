//
//  createTaskVC.swift
//  DoItList
//
//  Created by Manolescu Mihai Alexandru on 11/08/2017.
//  Copyright © 2017 Manolescu Mihai Alexandru. All rights reserved.
//

import UIKit
import Foundation
import CoreData

class createTaskVC: UIViewController
{
    var task = Task()
    
    @IBOutlet weak var nameTextField: UITextField!

    @IBOutlet weak var isImportantSwitch: UISwitch!
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var saveTaskButton: UIButton!
    @IBAction func saveTaskButton(_ sender: Any)
    {
        task.itsTask = nameTextField.text!
        task.isImportant = isImportantSwitch.isOn
        
        write(task.itsTask, task.isImportant)
        print(task.isImportant ,"  ", task.itsTask)
        
        
    }
    
    func write(_ name: String, _ importance: Bool)
    {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let instance = CDTask(context: context)
        
        instance.isImportant = importance
        instance.itsTask = name
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
    }

}






