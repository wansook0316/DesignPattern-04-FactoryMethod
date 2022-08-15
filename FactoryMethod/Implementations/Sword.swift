//
//  Sword.swift
//  FactoryMethod
//
//  Created by Choiwansik on 2022/08/15.
//

import Foundation

internal struct Sword: Weapon {

    internal static var name: String = "sword"

    internal func use() {
        print("칼로 베었다..!")
    }

}
