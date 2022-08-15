//
//  WeaponCategory.swift
//  FactoryMethod
//
//  Created by Choiwansik on 2022/08/15.
//

import Foundation

internal enum WeaponCategory {

    // 각 Weapon 구현체 내부에 정의된 name을 기반으로 동기화하기 위해 RawValue 사용하지 않음
    internal init?(name: String) {
        if name == Sword.name {
            self = .sword
        } else if name == Shield.name {
            self = .shield
        } else if name == Bow.name {
            self = .bow
        } else {
            return nil
        }
    }

    case sword
    case shield
    case bow
}
