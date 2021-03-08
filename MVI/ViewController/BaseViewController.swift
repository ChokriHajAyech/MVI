//
//  BaseViewController.swift
//  MVI
//
//  Created by Mobiapps on 21/01/2021.
//

import UIKit

class BaseViewController<S: State, A: Action, VM: BaseViewModel<S, A>>: UIViewController {
    
    var viewModel: VM? = nil
    
    func setup() { }
    
    override func viewDidLoad() {
        setup()
    }
}
