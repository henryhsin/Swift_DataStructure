//
//  Node.swift
//  QueueDataStructure
//
//  Created by 辛忠翰 on 13/11/17.
//  Copyright © 2017 辛忠翰. All rights reserved.
//

import Foundation
public class Node<T>{
    var value: T
    var previous: Node<T>?
    var next: Node<T>?
    init(value: T) {
        self.value = value
    }
}
