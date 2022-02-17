//  VIPER Template created by Vladyslav Vdovychenko
//  ___FILEHEADER___

import XCTest
@testable import <#import name#>

// MARK: Don't forget to set the correct target for Test Case

class ___VARIABLE_productName___TestCase: XCTestCase {

    var moduleWireframe: ___VARIABLE_productName___Wireframe!
    var moduleInputDelegate: ___VARIABLE_productName___InputDelegate?
    
    override func setUp() {
        self.moduleWireframe = ___VARIABLE_productName___Wireframe()
        super.setUp()
    }
    
    func testModuleGeneration() {
        let module = self.moduleWireframe.createModule(outputDelegate: self, inputDelegate: &self.moduleInputDelegate)
        XCTAssertNotNil(module)
        if let presenter = module?.presenter as? (___VARIABLE_productName___ViewPresenterOutputProtocol & ___VARIABLE_productName___InteractorPresenterOutputProtocol & ___VARIABLE_productName___RouterPresenterOutputProtocol & ___VARIABLE_productName___InputDelegate) {
            XCTAssertNotNil(presenter.router)
            XCTAssertNotNil(presenter.interactor)
            XCTAssertNotNil(presenter.view)
            XCTAssertNotNil(presenter.delegate)
            XCTAssertNotNil(self.moduleInputDelegate)
        } else {
            XCTFail()
        }
    }

}

extension ___VARIABLE_productName___TestCase: ___VARIABLE_productName___OutputDelegate {
    
}
