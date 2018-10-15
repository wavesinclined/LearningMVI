//
//  ViewController.swift
//  MVILearning
//
//  Created by alice singh on 11/10/18.
//  Copyright © 2018 alice singh. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    var disposeBag = DisposeBag()
    
    // input
    lazy var intentions: Intentions = {
        return Intentions(nameField.rx.text
            .asObservable()
            .filter { $0 != nil}
            .map {  $0! }
        )
    }()
    
    //output
    lazy var viewRenderer: ViewRenderer = {
        return ViewRenderer(self)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
    }
    
    // bindings to the Model
    func bind() {
        Model().bind(self.intentions).subscribe(onNext: { state in
            self.viewRenderer.renderState(state)
        }, onError: nil, onCompleted: nil, onDisposed: nil)
        .disposed(by: disposeBag)
    }
}

extension ViewController: MVIView {
    func greet(_ message: String) {
        self.greetingLabel.text = message
    }
}

