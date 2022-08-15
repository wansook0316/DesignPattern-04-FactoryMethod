//
//  Weapon.swift
//  FactoryMethod
//
//  Created by Choiwansik on 2022/08/15.
//

import Foundation

internal protocol Weapon: Object {

    func use()

}

extension Weapon {

    internal func execute() {
        self.use()
    }
    
}
