//
//  DetailViewController.swift
//  NewTodo
//
//  Created by Tyler Boudreau on 2018-05-16.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var priorityLabel: UILabel!
    @IBOutlet weak var taskTitle: UILabel!
    var detailItem: Todo?

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            detailDescriptionLabel.text = detail.tododescription
            priorityLabel.text = String(detail.priority)
            taskTitle.text = detail.title
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

