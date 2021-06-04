//  VIPER Template created by Vladyslav Vdovychenko
//  ___FILEHEADER___

import Foundation
import UIKit

class ___VARIABLE_productName___Wireframe: BaseWireframe {
    
    override func storyboardName() -> String {
        return "<#storyboard name#>"
    }
    
    override func identifier() -> String {
        return "___VARIABLE_productName___ViewController"
    }
    
    func pushFrom(_ parent: UINavigationController?) {
        if let view: ___VARIABLE_productName___ViewController = initializeController(), let parent = parent {
            
            let presenter: ___VARIABLE_productName___ViewPresenterOutputProtocol & ___VARIABLE_productName___InteractorPresenterOutputProtocol & ___VARIABLE_productName___RouterPresenterOutputProtocol = ___VARIABLE_productName___Presenter()
            let router: ___VARIABLE_productName___RouterPresenterInputProtocol = ___VARIABLE_productName___Router()
            let interactor: ___VARIABLE_productName___InteractorPresenterInputProtocol = ___VARIABLE_productName___Interactor()
            
            presenter.view = view
            presenter.router = router
            presenter.interactor = interactor
            
            interactor.presenter = presenter
            view.presenter = presenter
            router.presenter = presenter

            presenter.view = view
            self.presentedViewController = view
            parent.pushViewController(view, animated: true)
        }
    }
    
    func presentIn(_ parent: UIViewController?) {
        if let view: ___VARIABLE_productName___ViewController = initializeController(), let parent = parent {
            let navigationController = UINavigationController(rootViewController: view)
            
            let presenter: ___VARIABLE_productName___ViewPresenterOutputProtocol & ___VARIABLE_productName___InteractorPresenterOutputProtocol & ___VARIABLE_productName___RouterPresenterOutputProtocol = ___VARIABLE_productName___Presenter()
            let router: ___VARIABLE_productName___RouterPresenterInputProtocol = ___VARIABLE_productName___Router()
            let interactor: ___VARIABLE_productName___InteractorPresenterInputProtocol = ___VARIABLE_productName___Interactor()
            
            presenter.view = view
            presenter.router = router
            presenter.interactor = interactor
            
            interactor.presenter = presenter
            view.presenter = presenter
            router.presenter = presenter

            presenter.view = view
            self.presentedViewController = view
            
            navigationController.modalPresentationStyle = .fullScreen
            parent.present(navigationController, animated: true, completion: nil)
        }
    }
    
}
