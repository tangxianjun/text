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



2.5

1月25日
swif独特储存多个类型值的方法
var  me = ("hello",3,true)
通过检索访问
me.o
me.1
me.2
当一个函数需要返回多个值时，使用上面这个方法。
type inference  swift编译器能够根据赋值推断变量类型。
type annotation 如  var a:Int  var b:String  进行变量类型的声明。
Int.min Int类型表示的最小值   Int.max Int类型表示的最大值  0x  16进制前缀  0o   8进制前缀   0b  2进制前缀   千分位可以用_隔开
UInt表示非负数整型，但是尽量不要用，避免不必要的类型转换问题。

两种浮点类型，float，double类型，float精确到小数点后6位， double精确到小数点后15位。
type(of:name)查看变量类型。
可以将两个不同类型的值相加，但是不能讲两个不同类型的变量相加。
doublen(name)并不是类型转换，而是重新生成了一个值。
tupel打包多个类型的值
let success = （） 讲值依次写在括号里。
也可以给每个值命名，看上去更加直观。
let me =  (name:value)
me.name进行访问
构建新的tuple  var （value,value） = me
此时对value进行修改是不会影响之前tuple的值。当有的value不需要时可以用_代替。
tuple类型为依次tuple元素的类型，当tuple的元素个数不相等是不能比较大小，两个tuple比较是以第一个不相等的元素大小为结果。最多只能将6个元素的tuple进行比较。
swift不能直接对浮点数进行取余，需如下操作如 8.truncatingRemainder(dividingBy:2.5)
不在支持自加 i++或++i
可选类型(optiona)用于处理值可能为nil的情况
let userinput：String? = "userinput"
userInput ?? "A default userinput"当userInt为nil是输出A default userinput



















