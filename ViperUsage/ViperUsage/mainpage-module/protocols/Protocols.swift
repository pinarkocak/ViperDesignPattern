//
//  Protocols.swift
//  ViperUsage
//
//  Created by Pınar Koçak on 18.04.2022.
//

import Foundation

//Taşıyıcı protocoller

protocol InteractorToPresenterProtocol {
    func sendDataToPresenter(result: String)
}

protocol PresenterToViewProtocol {
    func sendDataToView(result: String)
}

//Ana Protocoller

protocol ViewToPresenterProtocol {
    /// orta katman olduğu için çift yönlü çalışır o yüzden hem view hem de interactor a veri iletimi vardır.
    var view: PresenterToViewProtocol? { get set }
    var interactor: PresenterToInteractorProtocol? { get set }
    
    func addition(num1: String, num2: String)
    func multiplication(num1: String, num2: String)
}

protocol PresenterToInteractorProtocol {
    /// interactordan sadece presentera veri iletimi tek yönlüdür
    var presenter: InteractorToPresenterProtocol? { get set}
    
    func add(num1: String, num2: String)
    func multiply(num1: String, num2: String)
}

//Router da yetkilendirme yapmamız lazım protokoller için

protocol PresenterToRouterProtocol {
    static func createModule(ref: ViewController)
}
