
import Foundation

protocol Action {}
enum MyAction: Action {
    case loadTasks
    case loadAppointments
}
