//
//  Linkedlist.swift
//  DatastructuresSwift
//
//  Created by Muhammad Hassan Shafi on 27/03/2020.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation

class LinkedList {
    var head : Node?
    
    init(head : Node?) {
        self.head = head
    }
    
    func append(node : Node){
        
        if head == nil {
            head = node
        }
        else {
            
            var current = head
            while ((current?.next) != nil) {
                current = current?.next
            }
            current?.next = node
        }
        
    }
    
    func getNode(atPosition position: Int) -> Node? {
        var current = head
        
        if head != nil {
            var initPosition = 1
            while ((current?.next) != nil) {
                initPosition += 1
                current = current?.next
                if initPosition == position {
                    return current
                }
                
            }
            
            return nil
        }
        else {
            return nil
        }
    }
    
    func insertNode(_ node: Node, at position: Int) {
        
        var initPosition = 1
        
        var current = head
        
        while ((current?.next) != nil) {
            initPosition += 1
            
            if position == initPosition {
                node.next = current?.next
                current?.next = node
            }
            current = current?.next
            
        }
        
    }
    
    func deleteNode(withValue value: Int) {
        
        var current = head
        while ((current?.next) != nil) {
            if current?.value == value {
                head = current?.next
                printValuesOFLinkList()
                current = current?.next
            }
            else {
                current = current?.next
            }

        }
        
    }
    
    
    func printValuesOFLinkList() {
        var current = head
        while ((current?.next) != nil) {
            print(current!.value)
            current = current?.next
            if current?.next == nil {
                print(current!.value)
            }
            
        }
        
    }
    
    
    
}
