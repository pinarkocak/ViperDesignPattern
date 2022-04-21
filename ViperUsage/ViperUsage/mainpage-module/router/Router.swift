//
//  Router.swift
//  ViperUsage
//
//  Created by Pınar Koçak on 18.04.2022.
//

import Foundation

class Router: PresenterToRouterProtocol {
    static func createModule(ref: ViewController) {
        let presenter = Presenter()
        
        //View sınıfı değişkeni
        ref.presenterObj = presenter
        
        //Presenter sınıfı değişkenleri
        ref.presenterObj?.interactor = Interactor()
        ref.presenterObj?.view = ref
        
        //Interactor sınıfı değişkeni
        ref.presenterObj?.interactor?.presenter = presenter
    }
}
