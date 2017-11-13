//
//  LinkedList.swift
//  QueueDataStructure
//
//  Created by 辛忠翰 on 13/11/17.
//  Copyright © 2017 辛忠翰. All rights reserved.
//

import Foundation
public class LinkedList<T: Comparable>{
    private var head: Node<T>?
    private var tail: Node<T>?
    public var isEmpty: Bool{
        return head == nil ? true : false
    }
    public var first: Node<T>?{
        return head
    }
    public var last: Node<T>?{
        return tail
    }
    
    public func append(value: T){
        let node = Node.init(value: value)
        if isEmpty{
            head = node
            tail = node
        }else{
            tail?.next = node
            node.previous = tail
            tail = node
        }
    }
    
    public func nodeAt(index: Int) -> Node<T>?{
        if index >= 0 {
            var i = index
            var node = head
            while node != nil{
                if i == 0{
                    return node
                }
                i -= 1
                node = node?.next
            }
        }
        return nil
    }
    
    public func removeAll(){
        head = nil
        tail = nil
    }
    
    public func removeAt(index: Int) -> Bool{
        guard let targetNode = nodeAt(index: index) else{
            print("We can not find the node!")
            return false
        }
        
        guard let previous = targetNode.previous else{
            head = head?.next
            head?.previous = nil
            return true
        }
        
        guard let next = targetNode.next else{
            tail = tail?.previous
            tail?.next = nil
            return true
        }
        
        previous.next = next
        next.previous = previous
        return true
    }
    
    public func nodeAt(targetNode: Node<T>) -> Int?{
        var node = head
        var i = 0
        while node != nil {
            if node?.value == targetNode.value {
                return i
            }
            i += 1
            node = node?.next
        }
        return nil
    }
}

extension LinkedList: CustomStringConvertible{
    public var description: String {
        var text = "["
        var node = head
        while node != nil {
            text += String(describing: node?.value)
            node = node?.next
            if node != nil {text += ", "}
        }
        return text + "]"
    }
    
}
