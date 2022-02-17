//  VIPER Template created by Vladyslav Vdovychenko
//  ___FILEHEADER___

import XCTest
@testable import <#import name#>

// MARK: Don't forget to set the correct target for Test Case

class ___VARIABLE_productName___TestCase: XCTestCase {

    var moduleWireframe: ___VARIABLE_productName___Wireframe!
    
    override func setUp() {
        self.moduleWireframe = ___VARIABLE_productName___Wireframe()
        super.setUp()
    }
    
    func testModuleGeneration() {
        let module = self.moduleWireframe.createModule()
        XCTAssertNotNil(module)
        if let presenter = module?.presenter as? (___VARIABLE_productName___ViewPresenterOutputProtocol & ___VARIABLE_productName___InteractorPresenterOutputProtocol & ___VARIABLE_productName___RouterPresenterOutputProtocol) {
            XCTAssertNotNil(presenter.router)
            XCTAssertNotNil(presenter.interactor)
            XCTAssertNotNil(presenter.view)
        } else {
            XCTFail()
        }
    }

}
