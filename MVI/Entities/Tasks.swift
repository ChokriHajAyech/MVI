//
//  tasks.swift
//  MVI
//
//  Created by Mobiapps on 20/01/2021.
//

import Foundation

struct Tasks {
    var isEmpty = false
    var name: String?
    var appointment: String?
    func allTitles() ->  String? {
        return name
    }
}

