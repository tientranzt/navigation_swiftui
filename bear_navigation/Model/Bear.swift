//
//  Bear.swift
//  bear_navigation
//
//  Created by tientran on 9/19/20.
//

import Foundation

struct Bear : Identifiable{
    var id = UUID()
    var name : String
    var image : String
    var age : String
    var canSwim : Bool
    var description : String
}

extension Bear {
    static func bear() -> [Bear] {
        return [
            Bear(name: "Teddy Bear", image: "bear1", age: "3", canSwim: false, description: "This is cute bear and it just eat vegan"),
            Bear(name: "Panda Cute", image: "bear2", age: "1", canSwim: true, description: "Have a nice skin"),
            Bear(name: "Canda Cook", image: "bear3", age: "4", canSwim: true, description: "Can run fast")
        ]
    }
}
