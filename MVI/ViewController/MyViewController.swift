
import UIKit
import RxSwift

class MyViewController: BaseViewController<MyState, MyAction, MyViewModel>{
    
    //ViewModel
    let disposeBag = DisposeBag()
    
  
    override func setup() {
        viewModel = MyViewModel(state: MyState(),
                                taskService: TaskService(),
                                appointmentsService: AppointmentService())
    }
    
    //Iboutlet
    @IBOutlet weak var taskTextView: UITextView!
    @IBOutlet weak var appTextView: UITextView!
    
    @IBOutlet weak var loadingIndicator: UIActivityIndicatorView!
    @IBOutlet weak var errorView: UIView!
    @IBOutlet weak var emptyView: UIView!
    
    @IBOutlet weak var tasksButton: UIButton!
    @IBOutlet weak var appoimentButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //binding state
        viewModel?.state?.map{$0?.taskText }
            .distinctUntilChanged()
            .bind(to: taskTextView.rx.text)
            .disposed(by: disposeBag)
        
        viewModel?.state?
            .map{$0?.appointmentText }
            .distinctUntilChanged()
            .bind(to: appTextView.rx.text)
            .disposed(by: disposeBag)
        
        
        //Bind Action
        tasksButton.rx
            .tap
            .bind {self.viewModel?
                .dispatch(action: MyAction.loadTasks)}
            .disposed(by: disposeBag)
        
        appoimentButton.rx
            .tap
            .bind {self.viewModel?
                .dispatch(action: MyAction.loadAppointments)}
            .disposed(by: disposeBag)
        
    }
}

