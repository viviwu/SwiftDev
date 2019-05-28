//
//  APIString.swift
//  SwiftCMD
//
//  Created by vivi wu on 2019/5/28.
//  Copyright © 2019 vivi wu. All rights reserved.
//

import Foundation


func StringCharacterSet() -> Void {
    let str:String = "Created by vivi wu on 2019/5/28"
    let arr = str.components(separatedBy: CharacterSet.init(charactersIn: " /"))
    print("arr = \(arr)")
    
    let join = arr.joined(separator: "-")
    print("join =\(join)")
}

func GbkString2Unicode() -> Void {
    let gbkstr = "https://itunes.apple.com/cn/app/moke-纯粹微博体验/id880813963?mt=8"
    let unistr = gbkstr.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlFragmentAllowed)
    print("unistr:\(String(describing: unistr))")
    
    print(unistr?.removingPercentEncoding ?? "default value")
}
