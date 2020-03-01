//
//  ViewController.swift
//  LinkedLists
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let six = Node(item: 6, next: nil)
        let five = Node(item: 5, next: six)
        let four = Node(item: 4, next: five)
        let three = Node(item: 3, next: four)
        let two = Node(item: 2, next: three)
        let one = Node(item: 1, next: two)

        // six.next = three
        // 1 -> 2 -> 3 -> 4 -> 5 -> 6
        
        print(one.hasLoop(list: one))
        one.reverseList(list: one)
        printList(list: six)
    }

    /// Prints the elements of a LinkedList
    /// - Parameter list: LinkedList of type <T>
    func printList<T>(list: Node<T>?) {
        var cur = list
        while cur != nil {
            if let value = cur?.item {
                print(String(value) + " -> ", terminator: "")
            }
            cur = cur?.next
            
        }
    }
    
}

