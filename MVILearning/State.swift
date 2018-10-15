//
//  State.swift
//  MVILearning
//
//  Created by alice singh on 11/10/18.
//  Copyright © 2018 alice singh. All rights reserved.
//

import Foundation

class State: Equatable {
    var name: String
    init(_ message: String) {
        self.name = message
    }
    
    static func == (lhs: State, rhs: State) -> Bool {
        return lhs.name == rhs.name
    }
}
