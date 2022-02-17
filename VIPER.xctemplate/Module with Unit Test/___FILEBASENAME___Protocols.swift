//  VIPER Template created by Vladyslav Vdovychenko
//  ___FILEHEADER___

import Foundation
import UIKit

// MARK: - View - Presenter
protocol ___VARIABLE_productName___ViewPresenterInputProtocol: BaseViewControllerProtocol {
    
    var presenter: ___VARIABLE_productName___ViewPresenterOutputProtocol? { get set }
    
}

protocol ___VARIABLE_productName___ViewPresenterOutputProtocol: AnyObject {
    
    var view: ___VARIABLE_productName___ViewPresenterInputProtocol? { get set }
        
}

// MARK: - Interactor - Presenter
protocol ___VARIABLE_productName___InteractorPresenterInputProtocol: AnyObject {
    
    var presenter: ___VARIABLE_productName___InteractorPresenterOutputProtocol? { get set }
    
}

protocol ___VARIABLE_productName___InteractorPresenterOutputProtocol: AnyObject {
    
    var interactor: ___VARIABLE_productName___InteractorPresenterInputProtocol? { get set }
    
}

// MARK: - Router - Presenter
protocol ___VARIABLE_productName___RouterPresenterInputProtocol: AnyObject {
    
    var presenter: ___VARIABLE_productName___RouterPresenterOutputProtocol? { get set }
    
}

protocol ___VARIABLE_productName___RouterPresenterOutputProtocol: AnyObject {
    
    var router: ___VARIABLE_productName___RouterPresenterInputProtocol? { get set }
    
}
