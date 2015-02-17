//
//  TaskDetailViewController.swift
//  Taskit
//
//  Created by David Kuchta on 2/16/15.
//  Copyright (c) 2015 David Kuchta. All rights reserved.
//

import UIKit

class TaskDetailViewController: UIViewController {

    var detailTaskModel: TaskModel!
    
    @IBOutlet weak var subtaskTextField: UITextField!
    
    @IBOutlet weak var taskTextField: UITextField!
    
    @IBOutlet weak var dueDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.taskTextField.text = detailTaskModel.task
        self.subtaskTextField.text = detailTaskModel.subTask
        self.dueDatePicker.date = detailTaskModel.date
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func cancelButtonTapped(sender: UIBarButtonItem) {
        self.navigationController?.popViewControllerAnimated(true)
    }
   }
