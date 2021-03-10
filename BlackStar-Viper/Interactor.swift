//
//  Interactor.swift
//  BlackStar-Viper
//
//  Created by Maksym on 03.03.2021.
//

import Foundation
import Alamofire


protocol InputInteractor {
   
    
}
protocol OutputInteractor {
   
}


class Interactor: InputInteractor {
    
    var output: OutputInteractor!
    
    func getCategory() {
        AF.request("https://blackstarshop.ru/index.php?route=api/v1/categories").responseJSON{
            response in guard let data = response.data else {return}
            let category: Category = try! JSONDecoder().decode(Category.self, from: data)
         
        }
    }
}

