//
//  MyViewModel.swift
//  MVI
//
//  Created by Mobiapps on 20/01/2021.
//

import Foundation
import RxCocoa
import RxSwift

class MyViewModel : BaseViewModel<MyState, MyAction>{
    
    //Service Manager
    private var taskService : TaskServiceProtocol!
    private var appointmentsService: AppointmentsServiceProtocol!
    
    //RX
    private let _state: BehaviorRelay<MyState> = BehaviorRelay(value: MyState())
    
    init(state: MyState, taskService: TaskServiceProtocol,
         appointmentsService: AppointmentsServiceProtocol) {
        super.init(state: state)
        self.taskService = taskService
        self.appointmentsService = appointmentsService
    }
 
    
    //MARK: Action
    
    override func handle(action: MyAction, state: MyState) {
            switch action {
            case .loadTasks:
                loadTasks(state: state)
            case .loadAppointments:
                loadAppointments()
        }
    }
    
    //MARK: Services implements
   private func loadTasks(state: MyState) {
        taskService.loadTasks { (tasks, error) in
            updateState { copy in
                copy.taskText = (tasks as? Tasks)?.allTitles()
                copy.taskError = error
            }
            /*var newState = _state.value
             newState.taskText = (tasks as? Tasks)?.allTitles()
             newState.taskError = error
             self._state.accept(newState)*/
        }
    }
    
   private func loadAppointments() {
        appointmentsService.loadAppointments { (tasks, error) in
            updateState { copy in
                copy.appointmentText = (tasks as? Appointment)?.getAppointment()
                copy.appointmentError = error
            }
        }
    }
}
