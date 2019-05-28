//
//  func_block.swift
//  SwiftCMD
//
//  Created by vivi wu on 2019/5/28.
//  Copyright © 2019 vivi wu. All rights reserved.
//

import Foundation

//Swift 闭包实例
/*
 {(parameters) -> return type in
 statements
 }
 */
func SwiftClosures() {
  //swift block
  let divide = {(val1: Int, val2: Int) -> Int in
    return val1 / val2
  }
  
  let result = divide(200, 20)
  print (result)
}



//    sorted 方法
//Swift 标准库提供了名为 sorted(by:) 的方法，会根据您提供的用于排序的闭包函数将已知类型数组中的值进行排序。
func backwards(s1: String, s2: String) -> Bool {
  return s1 > s2
}
//     使用普通函数(或内嵌函数)提供排序功能,闭包函数类型需为(String, String) -> Bool。
func arraySortedByFunc(){
  let nameArr = ["AT", "AE", "D", "S", "BE"]
  let reversed = nameArr.sorted(by: backwards)
  print(reversed)
}

//    参数名称缩写
func arraySortedByShortArgument() {
  let names = ["AT", "AE", "D", "S", "BE"]
  
  let reversed = names.sorted( by: { $0 > $1 } )
  print(reversed)
}
//    运算符函数
func arraySortedByOperatorFunc() {
  let names = ["AT", "AE", "D", "S", "BE"]
  
  let reversed = names.sorted(by: >)
  print(reversed)
}

//    尾随闭包
func 尾随闭包() {
  let names = ["AT", "AE", "D", "S", "BE"]
  
  //尾随闭包
  let reversed = names.sorted() { $0 > $1 }
  print(reversed)
}
