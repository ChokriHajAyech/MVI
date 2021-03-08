//
//  Appointment.swift
//  MVI
//
//  Created by Mobiapps on 21/01/2021.
//

import Foundation

struct Appointment {
    var isEmpty = false
    var name: String?

    func getAppointment() ->  String? {
        return name
    }
    
}
