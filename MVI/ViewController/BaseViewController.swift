import UIKit

class BaseViewController<S: State, A: Action, VM: BaseViewModel<S, A>>: UIViewController {
    var viewModel: VM? = nil
    func setup() { }
    override func viewDidLoad() {
        setup()
    }
}
