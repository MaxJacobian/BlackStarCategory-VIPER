//
//  CategoryPresenter.swift
//  BlackStar-Viper
//
//  Created by Maksym on 04.03.2021.
//

import Foundation
import UIKit

protocol CategoryPresenterInput {
    func creator()
    var category: [String] {get set}
    var output: CategoryPresenterOutput! {get set}
}
protocol CategoryPresenterOutput {
    func getCategory(category: [String])
}

class CategoryPresenter: CategoryPresenterInput{
  
    var category: [String] = []
    var output: CategoryPresenterOutput!
    var categoryInteractorInput: CategoryInteractorInput = CategoryInteractor()
    
    func creator() {
        categoryInteractorInput.ouput = self
        categoryInteractorInput.loadCategory()
    }
}
extension CategoryPresenter: CategoryInteractorOutput {
    func getData(category: [String]) {
        output?.getCategory(category: category)
    }
}
