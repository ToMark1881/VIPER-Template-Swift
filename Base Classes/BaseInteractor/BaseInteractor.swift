//
//  BaseInteractor.swift
//  
//
//  Created by macbook on 02.06.2021.
//

import Foundation
import UIKit

class BaseInteractor {
    
    var servicesContainer: ServicesContainer!
    
    init() {
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            self.servicesContainer = appDelegate.servicesContainer
        }
    }
    
    func complete(completed: @escaping ()-> Void) { //use this method to avoid gcd crash (ui on non-main thread)
        DispatchQueue.main.async {
            completed()
        }
    }
    
}
