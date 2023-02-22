//
//  UITableViewCell+.swift
//  RealmApp
//
//  Created by Asya Sher on 22.02.2023.
//  Copyright © 2023 Alexey Efimov. All rights reserved.
//

import UIKit

extension UITableViewCell {
    func customize(with taskList: TaskList) {
        var content = defaultContentConfiguration()
        
        let currentTasks = taskList.tasks.filter("isComplete = false")
        
        content.text = taskList.name

        if taskList.tasks.isEmpty {
            content.secondaryText = "0"
        } else if !currentTasks.isEmpty {
            content.secondaryText = currentTasks.count.formatted()
        } else {
            content.secondaryText = .none
            accessoryType = .checkmark
        }

        contentConfiguration = content
    }
}
