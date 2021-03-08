
import Foundation
import XCTest
@testable import MVI

class TaskServiceMock: TaskServiceProtocol {
  
    func loadTasks(completionHandler: CompletionHandler) {
        completionHandler((result: Tasks(isEmpty: false, name: "chokri"), error: nil))
    }
    
     func loadAppointments(completionHandler: CompletionHandler) {
         completionHandler((result: Tasks(isEmpty: false, name: "ayech"), error: nil))
     }
     
}


class AppointmentServiceMock: AppointmentsServiceProtocol {
    
     func loadAppointments(completionHandler: CompletionHandler) {
         completionHandler((result: Tasks(isEmpty: false, name: "ayech"), error: nil))
     }
     
}

