//
//  ViewController.swift
//  QueueDataStructure
//
//  Created by 辛忠翰 on 13/11/17.
//  Copyright © 2017 辛忠翰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var queue = Queue<Int>()
        queue.enqueue(element: 1)
        queue.enqueue(element: 2)
        queue.enqueue(element: 3)
        queue.enqueue(element: 37)
        queue.enqueue(element: 13)
        queue.dequeue()
        queue.dequeue()
        queue.dequeue()
        print(queue.description)
        
        var stack = Stack<String>()
        stack.push(element: "QQ")
        stack.push(element: "GG")
        stack.push(element: "Wow")
        stack.pop()
        stack.pop()
        print(stack.description)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

