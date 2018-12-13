     不换行输出
     for x in 0...10{
    print("\(x) ", terminator: "")
}
print()


let 用于定义常量，定义完后不能修改。

var 用于定义变量，可以修改。

swift可以自动识别属性类别


在这两种情况下，变量 optionalInteger 都是可选整数类型。注意，在类型和 ?之间没有空格。

Optional 是一个含有两种情况的枚举，None 和 Some(T)，用来表示可能有或可能没有值。任何类型都可以明确声明为（或者隐式转换）可选类型。当声明一个可选类型的时候，要确保用括号给 ? 操作符一个合适的范围。例如，声明可选整数数组，应该写成 (Int[])? 写成 Int[]? 会报错。

当你声明一个可选变量或者可选属性的时候没有提供初始值，它的值会默认为 nil。

可选项遵照 LogicValue 协议，因此可以出现在布尔环境中。在这种情况下，如果可选类型T?包含类型为T的任何值（也就是说它的值是 Optional.Some(T) ），这个可选类型等于 true，反之为 false。



import CocoOptional("Hello, Swift!")



import Cocoa

var myString:String!

myString = "Hello, Swift!"

if myString != nil {
   print(myString)
}else{
   print("myString 值为 nil")
}

输出结果
输出姐.
var myString:String? = nil

if myString != nil {
    print(myString)
}else{
    print("字符串为 nil")
}

以上代码输出结果
字符串为 nil


import Cocoa

var myString:String?

myString = "Hello, Swift!"

if myString != nil {
   print(myString)
}else{
   print("myString 值为 nil")
}

以上输出结果
Optional("Hello, Swift!")



import Cocoa

var myString:String!

myString = "Hello, Swift!"

if myString != nil {
   print(myString)
}else{
   print("myString 值为 nil")
}

输出结果
Hello, Swift!



Swift 3 版本使用的是 String.characters.count

import Cocoa

var varA   = "www.runoob.com"

print( "\(varA), 长度为 \(varA.count)" )



isEmpty

判断字符串是否为空，返回布尔值

hasPrefix(prefix: String)

检查字符串是否拥有特定前缀

hasSuffix(suffix: String)

检查字符串是否拥有特定后缀。

Int(String)

转换字符串数字为整型。 实例:
let myString: String = "256"
let myInt: Int? = Int(myString)


import Cocoa

var varA:String = "Hello "
let varB:Character = "G"

varA.append( varB )

print("varC  =  \(varA)")

输出结果
varC  =  Hello G



