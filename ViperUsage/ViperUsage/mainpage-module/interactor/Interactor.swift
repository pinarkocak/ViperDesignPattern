//
//  Interactor.swift
//  ViperUsage
//
//  Created by Pınar Koçak on 18.04.2022.
//

import Foundation

class Interactor: PresenterToInteractorProtocol {
    var presenter: InteractorToPresenterProtocol?
    
    func add(num1: String, num2: String) {
        if let s1 = Int(num1), let s2 = Int(num2) {
            let sum = s1 + s2
            presenter?.sendDataToPresenter(result: String(sum))
        }
    }
    
    func multiply(num1: String, num2: String) {
        if let s1 = Int(num1), let s2 = Int(num2) {
            let mul = s1 * s2
            presenter?.sendDataToPresenter(result: String(mul))
        }
    }

}
