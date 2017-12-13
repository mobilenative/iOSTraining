//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let str2 = "abc"
print(
    """
    abc
     abcd
    abcde
    """
)

let str3 = "abcd"
var str4 = str3.filter { (char) -> Bool in
    return char != "b"
}
str4 = str3.filter{$0 != "b"}

let str5:String??? = "a"
print(str5!!!)

if let str6 = str5{
    print(str6)
}

class Person{
    private var name:String?
    var age:Int?
    private(set) var name2:String?
}

protocol PersonDelegate{
    func eat()
}

extension Person : PersonDelegate{
    func eat() {
        if let n = name{
            
        }
        guard let n = name else{
            
        }
        print("apple")
    }
    
    func sleep() {
        
    }
}

extension PersonDelegate{
    func sleep(){
        
    }
}

