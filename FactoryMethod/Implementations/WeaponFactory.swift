//
//  WeaponFactory.swift
//  FactoryMethod
//
//  Created by Choiwansik on 2022/08/15.
//

import Foundation

internal struct WeaponFactory: Factory {

    internal init() {
        self.repository[Sword.identifier] = WeaponInfo(maxCount: 3)
        self.repository[Shield.identifier] = WeaponInfo(maxCount: 2)
        self.repository[Bow.identifier] = WeaponInfo(maxCount: 1)
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

    internal func postProcessing(with name: String) {
        guard var weaponInfo = self.repository[name] else {
            return
        }

        weaponInfo.increaseSalesRecord()
    }

    private var repository = [String: WeaponInfo]()

}

extension WeaponFactory {

    private struct WeaponInfo {
        internal var isOutOfStock: Bool {
            self.salesCount >= self.maxCount
        }

        internal init(maxCount: Int) {
            self.maxCount = maxCount
            self.salesCount = .zero
        }

        internal mutating func increaseSalesRecord() {
            self.salesCount += 1
        }

        private let maxCount: Int
        private var salesCount: Int
    }

}
