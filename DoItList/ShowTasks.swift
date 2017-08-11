//
//  ShowTasks
//  DoItList
//
//  Created by Manolescu Mihai Alexandru on 11/08/2017.
//  Copyright © 2017 Manolescu Mihai Alexandru. All rights reserved.
//

import UIKit
import Foundation
import CoreData

class ShowTasks: UIViewController
{

    var tasks: [CDTask] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        fetch()
        
        if tasks.count == 0
        {
            print("\n This is empty!")
        }

        for task in tasks
        {
                print(task.isImportant, "  ", task.itsTask)
        }
        
    
    }


    @IBOutlet weak var addTaskButton: UIBarButtonItem!
    @IBAction func addTaskButton(_ sender: Any)
    {
        performSegue(withIdentifier: "showTasksSegue", sender: nil)
    }
    

    func fetch()
    {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
        do{
        tasks = try context.fetch(CDTask.fetchRequest()) as! [CDTask]
        print(">>> ", tasks)
         }
          catch{}
    
        
        for instance in tasks
          {
             self.tasks.append(instance)
          }
    

    }

}
