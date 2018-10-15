//
//  Intentions.swift
//  MVILearning
//
//  Created by alice singh on 11/10/18.
//  Copyright © 2018 alice singh. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
// This is the user Intention (Input from the user)
class Intentions {
    
    var nameTextChanges: Observable<String>
    init(_ nameTextChanges: Observable<String> ) {
        self.nameTextChanges = nameTextChanges
    }
    
    func enterName() -> Observable<String> {
        return nameTextChanges.asObservable()
    }
}
