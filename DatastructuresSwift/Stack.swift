//
//  Stack.swift
//  DatastructuresSwift
//
//  Created by Muhammad Hassan Shafi on 27/03/2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

class Stack {
    var ll : LinkedList
    
    init(top:Node) {
        self.ll = LinkedList(head:top)
    }
    
     // add a node to the top of the stack
    func push( node : Node) {
        let current = self.ll.head
        node.next = current
        self.ll.head = node
        
    }
    
     // remove and return the topmost node from the stack
    func pop() -> Node? {
        if self.ll.head != nil {
            var current = self.ll.head
            let head = self.ll.head
            
            if current?.next != nil {
               current = current?.next
                self.ll.head = current
            }
            
            return head
        }
        
        return nil
    }
    
    
}
