//  VIPER Template created by Vladyslav Vdovychenko
//  ___FILEHEADER___

import Foundation
import UIKit

final class ___VARIABLE_productName___Wireframe: BaseWireframe {
    
    override func storyboardName() -> String {
        return "<#storyboard name#>"
    }
    
    override func identifier() -> String {
        return "___VARIABLE_productName___ViewController"
    }
    
    func pushFrom(_ parent: UINavigationController?, outputDelegate: ___VARIABLE_productName___OutputDelegate, inputDelegate: inout ___VARIABLE_productName___InputDelegate?) {
        guard let viewController = self.createModule(outputDelegate: outputDelegate, inputDelegate: &inputDelegate), let parent = parent else { return }
        self.presentedViewController = viewController
        parent.pushViewController(viewController, animated: true)
    }
    
    func presentIn(_ parent: UIViewController?, outputDelegate: ___VARIABLE_productName___OutputDelegate, inputDelegate: inout ___VARIABLE_productName___InputDelegate?) {
        guard let viewController = self.createModule(outputDelegate: outputDelegate, inputDelegate: &inputDelegate), let parent = parent else { return }
        let navigationController = UINavigationController(rootViewController: viewController)
        self.presentedViewController = viewController
        
        navigationController.modalPresentationStyle = .fullScreen
        parent.present(navigationController, animated: true, completion: nil)
    }
    
    func createModule(outputDelegate: ___VARIABLE_productName___OutputDelegate, inputDelegate: inout ___VARIABLE_productName___InputDelegate?) -> ___VARIABLE_productName___ViewController? {
        guard let view: ___VARIABLE_productName___ViewController = initializeController() else { return nil }
        
        let presenter: ___VARIABLE_productName___ViewPresenterOutputProtocol & ___VARIABLE_productName___InteractorPresenterOutputProtocol & ___VARIABLE_productName___RouterPresenterOutputProtocol & ___VARIABLE_productName___InputDelegate = ___VARIABLE_productName___Presenter()
        let router: ___VARIABLE_productName___RouterPresenterInputProtocol = ___VARIABLE_productName___Router()
        let interactor: ___VARIABLE_productName___InteractorPresenterInputProtocol = ___VARIABLE_productName___Interactor()
        
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        presenter.delegate = outputDelegate
        
        inputDelegate = presenter
        
        interactor.presenter = presenter
        view.presenter = presenter
        router.presenter = presenter
        
        return view
    }
    
}
