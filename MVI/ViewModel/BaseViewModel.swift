//
//  BaseViewModel.swift
//  MVI
//
//  Created by Mobiapps on 21/01/2021.
//

import Foundation
import RxCocoa
import RxSwift

class BaseViewModel<S: State, A: Action> {
    
    private let _state: BehaviorRelay<S?>? = BehaviorRelay(value: nil)
    var state: Observable<S?>? = nil

    init(state: S) {
        self._state?.accept(state)
        self.state = _state?.asObservable()
    }
    
    func dispatch(action: A) {
        handle(action: action, state: _state!.value!)
    }
    
   open func handle(action: A, state: S) {
        //   
    }
    
    func updateState(_ handler: (inout S)->()) {
        var newState = _state?.value
        handler(&(newState)!)
        self._state?.accept(newState!)
        
    }
    
}
