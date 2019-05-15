//
//  Electronics.swift
//  object_orient
//
//  Created by Kevin Abram on 15/05/19.
//  Copyright © 2019 Kevin Abram. All rights reserved.
//

import Foundation

enum stupidThingToDo
{
    case hug
    case say
}

func doAction(action: String)
{
    print("You \(action):")
}

func addSpace()
{
    print("")
}

class electronics
{
    var name: String
    var price: Double
    var description: String
    init(name: String, price: Double, description: String)
    {
        self.name = name
        self.price = price
        self.description = description
        addSpace()
    }
    
    func say()
    {
        doAction(action: "say")
        print("this is an un-named electronic")
        addSpace()
    }
}

class laptops: electronics
{
    override init(name: String, price: Double, description: String)
    {
        super.init(name: name, price: price, description: description)
        addSpace()
    }
    
    override func say()
    {
        doAction(action: "say")
        print("this is a laptop")
        addSpace()
    }
    
    func pressKey()
    {
        doAction(action: "pressed a key")
        print("You do not know what you are doing")
        addSpace()
    }
}

class expensiveLaptops: laptops
{
    init(name: String, description: String)
    {
        super.init(name: name, price: 10000, description: description)
        addSpace()
    }
    
    override func say()
    {
        doAction(action: "say")
        print("damn, this is expensive")
        addSpace()
    }
    
    override func pressKey()
    {
        doAction(action: "pressed a key")
        print("Good, you made the key dirty")
        addSpace()
    }
    
    func boast()
    {
        doAction(action: "boasted")
        print("THIS IS SO COOL GUYZ, LOOK AT THIS!!!, IMMA RICH!!!")
        addSpace()
    }
    
    func doStupidThing(action: stupidThingToDo)
    {
        doAction(action: "do a stupid thing")
       switch action
       {
       case .hug:
        print("You hugged your expensive laptop named \(name)")
        addSpace()
       case .say:
        print("You say I love you my darling")
        addSpace()
        }
    }
}


