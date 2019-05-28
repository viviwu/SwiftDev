//
//  named_types.swift
//  SwiftCMD
//
//  Created by vivi wu on 2019/5/28.
//  Copyright © 2019 vivi wu. All rights reserved.
//

import Foundation

/*
 Swift主要为我们提供了以下四种”named types“ 分别是：enum、struct、class和protocol
 
 */

// MARK:enum 值类型
/*
 1.枚举的原始值(raw value): 枚举成员可以用相同类型的默认值预先填充，这样的值我们称为原始值(raw value)：numType.caseType.rawValue
    可以预先同类型的赋值 ，可以使用枚举成员的rawValue属性来访问成员的原始值， 或者是使用原始值初始化器来尝试创建一个枚举的新实例；
 2、枚举的关联值(associated value)：关联值和原始值不同， 关联值更像是为枚举的成员们绑定了一组类型，不同的成员可以是不同的类型(提供关联值时用的是括号)；
 3、递归枚举：
 
 */
func factorial(n: Int)->Int {
    if n > 0 {
        return n * factorial(n: n - 1)
    } else {
        return 1
    }
}

func test_enum() -> Void {
    //1 * 2 * 3 * 4 * 5 * 6 = 720
    let sum = factorial(n: 6)
    print("sum=\(sum)")
}


// MARK: 结构体    值类型
//定义结构体类型时其成员可以没有初始值，但是创建结构体实例时该实例的成员必须有初值。

struct Student {
    var chinese: Int = 50
    var math: Int = 50
    var english: Int = 50
    init() {}
    init(chinese: Int, math: Int, english: Int) {
        self.chinese = chinese
        self.math = math
        self.english = english
    }
    init(stringScore: String) {
        let cme = stringScore.split(separator: ",")
        chinese = Int(atoi(String(cme.first!)))
        math = Int(atoi(String(cme[1])))
        english = Int(atoi(String(cme.last!)))
    }
}
//由于结构体是值类型，Swift规定不能直接在结构体的方法（初始化器除外）中修改成员。
//使用mutating我们便可以办到这点
//更改某个学生某门学科的成绩
func changeChinese(num: Int, student: inout Student){
    student.chinese += num
}
func test_struct() -> Void {
//    let student6 = Student()
    var student7 = Student(chinese: 90, math: 80, english: 70)
//    let student8 = Student(stringScore: "70,80,90")
    changeChinese(num: 20, student: &student7)
}



class named_types /*: <#super class#> */{
    
    
}
