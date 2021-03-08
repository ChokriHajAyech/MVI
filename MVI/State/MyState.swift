
import Foundation

protocol State {}

struct MyState: State {
    var taskText: String? = nil
    var appointmentText:  String? = nil
    
    var taskError:  Error? = nil
    var appointmentError:  Error? = nil
    
    var errorViewHidden: Bool {
        return taskError == nil && appointmentError == nil
    }
}
