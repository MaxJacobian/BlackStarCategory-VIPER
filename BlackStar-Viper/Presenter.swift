//
//  Presenter.swift
//  BlackStar-Viper
//
//  Created by Maksym on 03.03.2021.
//

import Foundation
import UIKit



protocol InputPresenter {
    
}
protocol OutputPresenter {
    
}


class Presenter: InputPresenter {
    var interactor: InputInteractor!
    
}
extension Presenter: OutputInteractor {
 
}
