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

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBOutlet weak var addTaskButton: UIBarButtonItem!
    @IBAction func addTaskButton(_ sender: Any)
    {
        performSegue(withIdentifier: "showTasksSegue", sender: nil)
    }

}

