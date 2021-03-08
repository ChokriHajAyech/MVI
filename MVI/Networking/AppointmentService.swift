//
//  AppointmentService.swift
//  MVI
//
//  Created by Mobiapps on 21/01/2021.
//

import Foundation

protocol AppointmentsServiceProtocol {
    func loadAppointments( completionHandler: CompletionHandler)
}

class AppointmentService : AppointmentsServiceProtocol {
    func loadAppointments(completionHandler: CompletionHandler) {
        completionHandler((result: Appointment(isEmpty: false, name: "Appointment"), error: nil))
    }
}
