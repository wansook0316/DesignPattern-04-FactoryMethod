//
//  Bow.swift
//  FactoryMethod
//
//  Created by Choiwansik on 2022/08/15.
//

import Foundation

internal struct Bow: Weapon {

    internal static var name: String = "bow"

    internal func use() {
        print("활로 쏘았다..!")
    }

}
