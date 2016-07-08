//
//  ViewController.swift
//  ArrayChallenge
//
//  Created by James Campagno on 6/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var shoppingList: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        let numberHalf: [Int] = [6,4,12,4]
        let itemHalf: [String] = ["Bananas", "Apples", "Eggs", "Rolls"]
        
        makeShoppingList(itemHalf, quantityOfItems: numberHalf)
    }
    
    
    func makeShoppingList(items:[String], quantityOfItems:[Int]) ->[String] {
        var returnArray: [String] = []
        for (index, item) in items.enumerate() {
            let count: Int = index + 1
            let numberOfItems: Int = quantityOfItems[index]
            let newString:String = "\(count). \(numberOfItems) \(items[index])"
            returnArray.append(newString)
        }
        return returnArray

    }
}
