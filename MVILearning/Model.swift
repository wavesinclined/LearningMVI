//
//  Model.swift
//  MVILearning
//
//  Created by alice singh on 11/10/18.
//  Copyright © 2018 alice singh. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
// core functionality
struct Model  {
    func bind(_ intentions: Intentions) -> Observable<State> {
        return intentions
            .enterName()
            .map { State($0)
        }
    }
}
