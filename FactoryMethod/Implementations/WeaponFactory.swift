//
//  WeaponFactory.swift
//  FactoryMethod
//
//  Created by Choiwansik on 2022/08/15.
//

import Foundation

internal struct WeaponFactory: Factory {

    internal init() {
        self.repository[Sword.name] = WeaponInfo(maxCount: 3)
        self.repository[Shield.name] = WeaponInfo(maxCount: 2)
        self.repository[Bow.name] = WeaponInfo(maxCount: 1)
    }

    internal func isCreatable(with name: String) -> Bool {
        guard let weaponInfo = self.repository[name] else {
            print("없는 무기이름입니다.")
            return false
        }

        guard weaponInfo.isOutOfStock == false else {
            print("\(name)은 품절되었습니다.")
            return false
        }

        return true
    }

    internal func createObject(with name: String) -> Object? {
        guard let category = WeaponCategory(name: name) else {
            return nil
        }

        switch category {
        case .sword:
            return Sword()
        case .shield:
            return Shield()
        case .bow:
            return Bow()
        }
    }

    internal func postProcessing(with name: String) {
        guard let weaponInfo = self.repository[name] else {
            return
        }

        weaponInfo.increaseSalesRecord()
    }

    private var repository = [String: WeaponInfo]()

}

extension WeaponFactory {

    // struct시 dictorary에서 복사해서 던지기 때문에 내부 변수값 수정이 번거로워 수정
    private class WeaponInfo {
        internal var isOutOfStock: Bool {
            self.salesCount >= self.maxCount
        }

        internal init(maxCount: Int) {
            self.maxCount = maxCount
            self.salesCount = .zero
        }

        internal func increaseSalesRecord() {
            self.salesCount += 1
        }

        private let maxCount: Int
        private var salesCount: Int
    }

}
