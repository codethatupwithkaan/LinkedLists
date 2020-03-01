//
//  Node.swift
//  LinkedLists
//

import Foundation

class Node<T: LosslessStringConvertible> {
    var item: T
    var next: Node?
    init(item: T, next: Node?) {
        self.item = item
        self.next = next
    }
    
    /// Checks if the given list has a loop
    /// - Parameter list: LinkedList of type <T>
    func hasLoop<T>(list: Node<T>) -> Bool {
        var p = list
        var q = list
        
        while let nextP = p.next, let nextQ = q.next?.next {
            if nextP === nextQ {
                return true
            }
            p = nextP
            q = nextQ
        }
        return false
    }
    
    /// Returns the same list but reversed
    /// - Parameter list: LinkedList of type <T>
    @discardableResult func reverseList<T>(list: Node<T>) -> Node<T>? {
        var prev: Node<T>? = nil
        var next: Node<T>? = nil
        var cur: Node<T>? = list
        
        if list.next == nil {
            return list
        }
        
        while cur != nil {
            next = cur?.next
            cur?.next = prev
            prev = cur
            cur = next
        }
        return prev
    }

}
