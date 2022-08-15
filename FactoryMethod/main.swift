//
//  main.swift
//  FactoryMethod
//
//  Created by Choiwansik on 2022/08/15.
//

import Foundation

internal func main() {
    let weaponFactory = WeaponFactory()

    var sword: Sword?
    var shield: Shield?
    var bow: Bow?

    // Sword
    sword = weaponFactory.create(with: Sword.name) as? Sword
    Sword를받아서사용하는함수(sword: sword)

    sword = weaponFactory.create(with: Sword.name) as? Sword
    Sword를받아서사용하는함수(sword: sword)

    sword = weaponFactory.create(with: Sword.name) as? Sword
    Sword를받아서사용하는함수(sword: sword)

    sword = weaponFactory.create(with: Sword.name) as? Sword
    Sword를받아서사용하는함수(sword: sword)

    // Shield
    shield = weaponFactory.create(with: Shield.name) as? Shield
    Shield를받아서사용하는함수(shield: shield)

    shield = weaponFactory.create(with: Shield.name) as? Shield
    Shield를받아서사용하는함수(shield: shield)

    shield = weaponFactory.create(with: Shield.name) as? Shield
    Shield를받아서사용하는함수(shield: shield)

    // Bow
    bow = weaponFactory.create(with: Bow.name) as? Bow
    Bow를받아서사용하는함수(bow: bow)

    bow = weaponFactory.create(with: Bow.name) as? Bow
    Bow를받아서사용하는함수(bow: bow)
}

internal func Sword를받아서사용하는함수(sword: Sword?) {
    sword?.use()
}

internal func Shield를받아서사용하는함수(shield: Shield?) {
    shield?.use()
}

internal func Bow를받아서사용하는함수(bow: Bow?) {
    bow?.use()
}

main()

