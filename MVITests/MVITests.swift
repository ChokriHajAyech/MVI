import XCTest
@testable import MVI
import RxSwift

class MVITests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testPerformanceExample() throws {
        
        //Prepare
        let taskService = TaskServiceMock()
        let appointmentServiceMock = AppointmentServiceMock()
        let disposBag = DisposeBag()
        
        var state = MyState()
        state.taskError = NSError()
        
        let viewModel = MyViewModel(state: state,
                                    taskService: taskService,
                                    appointmentsService: appointmentServiceMock)
        
        //Run
         viewModel.dispatch(action: .loadTasks)
        //viewModel.dispatch(action: .loadAppointments)
        
        //Verify
        
        viewModel.state?
            .map({ state in
                state!.errorViewHidden
            })
            . subscribe { errorBool in
                XCTAssertTrue(errorBool)
            }.disposed(by: disposBag)
        
    }
    
}
