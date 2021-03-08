//
//  TaskService.swift
//  MVI
//
//  Created by Mobiapps on 20/01/2021.
//

import Foundation

typealias CompletionHandler = ((result:Any?, error: Error?)) -> Void

protocol TaskServiceProtocol {
    func loadTasks( completionHandler: CompletionHandler)
}

class TaskService : TaskServiceProtocol {
    func loadTasks( completionHandler: CompletionHandler) {
        completionHandler((result: Tasks(isEmpty: false, name: "ayech"), error: nil))
    }
}
