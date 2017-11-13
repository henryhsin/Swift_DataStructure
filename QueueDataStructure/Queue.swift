
//
//  Queue.swift
//  QueueDataStructure
//
//  Created by 辛忠翰 on 13/11/17.
//  Copyright © 2017 辛忠翰. All rights reserved.
//

import Foundation
public struct Queue<T: Comparable>{
    fileprivate var list = LinkedList<T>()
    public func enqueue(element: T){
        list.append(value: element)
    }
    public func dequeue() -> T?{
        guard !list.isEmpty, let element = list.first else{
            return nil
        }
        let targetNode = list.nodeAt(targetNode: element)
        list.removeAt(index: targetNode!)
        
        return element.value
    }
    public var isEmpty: Bool{
        return list.isEmpty
    }
    
}

extension Queue: CustomStringConvertible{
    public var description: String {
        return list.description
    }
}
