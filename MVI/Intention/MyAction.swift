//
//  MyAction.swift
//  MVI
//
//  Created by Mobiapps on 21/01/2021.
//

import Foundation

protocol Action {}
enum MyAction: Action {
    case loadTasks
    case loadAppointments
}
