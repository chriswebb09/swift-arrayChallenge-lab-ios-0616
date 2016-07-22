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
        
        shoppingList = makeShoppingList(itemHalf, quantityOfItems:numberHalf)
        print(shoppingList)
    }
    
    
    func makeShoppingList(items:[String], quantityOfItems:[Int]) ->[String] {
        var shoppingList: [String] = []
        for (index, _) in items.enumerate() {
            let count: Int = index + 1
            let numberOfItems: Int = quantityOfItems[index]
            let listItem: String = "\(count). \(numberOfItems) \(items[index])"
            shoppingList.append(listItem)
        }
        return shoppingList

    }
}
