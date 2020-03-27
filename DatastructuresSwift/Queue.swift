//
//  Queue.swift
//  DatastructuresSwift
//
//  Created by Muhammad Hassan Shafi on 27/03/2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

class Queue {
    
    var storage : [Int]
    
    init(head : Int) {
        storage = [head]
    }
    // add the element to the queue
    func enqueue(element : Int) {
        storage.append(element)
    }
    
    func peek() -> Int? {
        if storage.count > 0 {
            return storage.first
        }
        else {
            return nil
        }
    }
    
    func dequeue() -> Int? {
        
        if storage.count > 0 {
            let firstElem = storage.first
            storage.removeFirst()
            return firstElem
        }
        else {
         return nil
        }
    }
    
    
}

