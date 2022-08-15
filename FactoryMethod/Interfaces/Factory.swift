//
//  Factory.swift
//  FactoryMethod
//
//  Created by Choiwansik on 2022/08/15.
//

import Foundation

internal protocol Factory {

    // 모든 팩토리에서 수행하는 기본 동작 정의
    func create(with name: String) -> Object?

    // 구현하는 팩토리에서 구현하는 Custom 동작
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
