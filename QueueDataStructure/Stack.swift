//
//  Stack.swift
//  QueueDataStructure
//
//  Created by 辛忠翰 on 13/11/17.
//  Copyright © 2017 辛忠翰. All rights reserved.
//

import Foundation
public struct Stack<T: Comparable>{
    fileprivate var link = LinkedList<T>()
    func push(element: T) {
        link.append(value: element)
    }
    func pop() -> T?{
        guard !link.isEmpty, let element = link.last else {return nil}
        var targetIndex = link.nodeAt(targetNode: element)
        link.removeAt(index: targetIndex!)
        return element.value
    }
}

extension Stack: CustomStringConvertible{
    public var description: String{
        return link.description
    }
}
