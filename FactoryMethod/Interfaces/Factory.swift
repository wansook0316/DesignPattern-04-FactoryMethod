//
//  Factory.swift
//  FactoryMethod
//
//  Created by Choiwansik on 2022/08/15.
//

import Foundation

internal protocol Factory {

    func create(with name: String) -> Object?
    func isCreatable(with name: String) -> Bool
    func postProcessing(with name: String)

}

extension Factory {

    internal func create(with name: String) -> Object? {
        guard self.isCreatable(with: name) else {
            return nil
        }

        let object = self.create(with: name)
        self.postProcessing(with: name)
        return object
    }

}
