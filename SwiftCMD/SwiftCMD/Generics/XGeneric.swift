//
//  Generic.swift
//  SwiftCMD
//
//  Created by csco on 2018/9/3.
//  Copyright © 2018年 csco. All rights reserved.
//

import Cocoa

//泛型

class XGeneric: XBaseProtocol {
    func OnTest() {
        print("--------> XArrayTupe <------------")
        
        // 定义一个交换两个变量的函数
        func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
            let tempA = a
            a = b
            b = tempA
        }
        //swapTwoValues 后面跟着占位类型名（T），并用尖括号括起来（<T>）。这个尖括号告诉 Swift 那个 T 是 swapTwoValues(_:_:) 函数定义内的一个占位类型名，因此 Swift 不会去查找名为 T 的实际类型。
        var numb1 = 100
        var numb2 = 200
        print("交换前数据:  \(numb1) 和 \(numb2)")
        swapTwoValues(&numb1, &numb2)
        print("交换后数据: \(numb1) 和 \(numb2)")
        
        var str1 = "A"
        var str2 = "B"
        print("交换前数据:  \(str1) 和 \(str2)")
        swapTwoValues(&str1, &str2)
        print("交换后数据: \(str1) 和 \(str2)")
        
    }
}

//关于 inout 关键字
/*
 两种参数传递方式
 
 A-值类型: 传递的是参数的一个副本，这样在调用参数的过程中不会影响原始数据。
 
 B-引用类型: 把参数本身引用(内存地址)传递过去，在调用的过程会影响原始数据。
 
 在 Swift 众多数据类型中，只有 class 是引用类型， 其余的如 Int、Float、Bool、Character、Array、Set、enum、struct全都是值类型.
 
 让值类型以引用方式传递 有时候我们需要通过一个函数改变函数外面变量的值(将一个值类型参数以引用方式传递)， 这时，Swift 提供的 inout 关键字就可以实现。
 */

