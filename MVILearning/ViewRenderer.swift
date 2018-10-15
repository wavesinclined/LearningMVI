//
//  ViewRenderer.swift
//  MVILearning
//
//  Created by alice singh on 11/10/18.
//  Copyright © 2018 alice singh. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
// this class is being used fr renderign the view
class ViewRenderer {
    var view: MVIView
    
    init(_ view: MVIView) {
        self.view = view
    }
    
    func renderState(_ state: State) {
        let name = state.name 
        view.greet( "hello" + " " + name)
    }
    
    func getrenderItems() -> Observable<[String]> {
        return Observable.just(["Alice",  "Singh", ""])
    }
    
    //let item = getrenderItems().subsc
}

