//
//  Stack.swift
//  SwiftCMD
//
//  Created by csco on 2018/9/3.
//  Copyright © 2018年 csco. All rights reserved.
//

import Cocoa

//Int 型的栈
struct IntStack {
    var items = [Int]()     //Array<Int>()
    mutating func push(_ item: Int) {
        items.append(item)
    }
    mutating func pop() -> Int {
        return items.removeLast()
    }
}


//泛型的栈
struct Stack<Element> {
    var items = [Element]()
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
}

//扩展一个泛型类型
extension Stack {
    var topItem:Element?{
        return items.isEmpty ? nil : items[items.count - 1]     //items.last
    }
}

extension Stack where Element: Equatable {
    func isTop(_ item: Element) -> Bool {
        guard let topItem = items.last else {
            return false
        }
        return topItem == item
    }
}


// 用数组实现栈
class AnyStack {
    var stack = [AnyObject]()
    var isEmpty: Bool { return stack.isEmpty }
    var peek: AnyObject? { return stack.last }
    
    init() {
        stack = [AnyObject]()
    }
    
    func push(object: AnyObject) {
        stack.append(object)
    }
    
    func pop() -> AnyObject? {
        if (!isEmpty) {
            return stack.removeLast()
        } else {
            return nil
        }
    }
}


class XStack: XBaseProtocol {
    
    func OnTest() {
        
        var stackOfStrings = Stack<String>()
        print("字符串元素入栈: ")
        stackOfStrings.push("google")
        stackOfStrings.push("runoob")
        print(stackOfStrings.items);
        
        let deletetos = stackOfStrings.pop()
        print("出栈元素: " + deletetos)
        
        var stackOfInts = Stack<Int>()
        print("整数元素入栈: ")
        stackOfInts.push(1)
        stackOfInts.push(2)
        print(stackOfInts.items);
        
        let anyStack = AnyStack.init()
        anyStack.push(object: "one" as AnyObject)
        anyStack.push(object: "2" as AnyObject)
        anyStack.push(object: "C" as AnyObject)
        print("push : \(anyStack.stack)")
        let pop = anyStack.pop() as! String
        print("pop : \(pop)")
        
    }
    
}


