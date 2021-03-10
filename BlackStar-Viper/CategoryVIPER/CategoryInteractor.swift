//
//  CategoryInteractor.swift
//  BlackStar-Viper
//
//  Created by Maksym on 04.03.2021.
//

import Foundation
import Alamofire


protocol CategoryInteractorInput {
   func loadCategory()
   var  ouput: CategoryInteractorOutput! {get set}
}

protocol CategoryInteractorOutput {
    func getData(category: [String])
}
class CategoryInteractor: CategoryInteractorInput{
    
    var ouput: CategoryInteractorOutput!
    var category: Category = [:]
    
    func loadCategory(){
        AF.request("https://blackstarshop.ru/index.php?route=api/v1/categories").responseJSON {
            response in guard let data = response.data else{return}
            self.category = try! JSONDecoder().decode(Category.self, from: data)
            var array: [String] = []
            for element in self.category.map({_ , value in value.name}) {
                array.append(element)
            }
            self.ouput?.getData(category: array)
        }
    }
}
