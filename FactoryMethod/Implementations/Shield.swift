//
//  Shield.swift
//  FactoryMethod
//
//  Created by Choiwansik on 2022/08/15.
//

import Foundation

internal struct Shield: Weapon {

    internal static var name: String = "shield"

    internal func use() {
        print("방패로 막았다..!")
    }

}
