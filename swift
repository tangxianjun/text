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

1月26日                      //  Str代表自己已经定义好的字符串变量
昨天算是解决了我一直以来对可选类型的不理解。
1…3表示闭区间，1..<3表示左闭右开。
switch中fallthrough关键字会在执行完本次语句后，还会执行一次下一次的语句。别切switch里面可以用区间。
for 循环接受体 in 循环体{}
遍历字符串  for i in Str.characters{}
APP里包含死循环，否则代码执行结束即退出，即闪退。
repeat-while相当于do while循环。
repeat { code }while
函数  func (参数，可传递多个参数)->(函数返回值类型)   可以无参数无返回值
返回值必须与参数类型相同！！！！
定义一个可选类型  var a : Optional<值的类型>  使用可选类型时需要用!进行解包如：a!  可选类型可以避免一些常见的错误，更为安全。
swift中nil是一个特定类型的空值，不是指针指向空。

断言  assert有利于帮助开发者debug 只有为true才能继续。

Str.isEmpty可以用来判断字符串是否为空。


1月27日                       //  Str代表自己已经定义好的字符串变量
字符串索引   var Strc = Str.index(Str.startIndex,offsetBy:数字)
字符串截取   Str.substring(to:Strc)          //  从哪个位置到哪个位置
           Str.substring(from:Strc)        //  从哪个位置开始截取
转换成oc的字符串截取方式
(Str as NSString).substring(to:数字，表示截取到第几位)
(Str as NSString).substring(from:数字)
(Str as NSString).substring(with:NSRange.init 
                   (locatio:数字，表示开始位置,length:数字,表示结束位置))  
字符串的替换
Str.replaceingOccurrences(of:"不要的字符",with:"新替换上的字符")
字符串的插入
Str.insert("需要插入的字符",at:Str.endIndex)       //在字符串的末尾插入
Str.insert("需要插入的字符",at:Str.startIndex)       //在字符串的开头插入
Str.insert("需要插入的字符",at:Strc)       //在字符串的某个位置插入    at：索引
字符串的删除
Str.remove(at:Strc)                         //删除某个位置上的字符     
Str.removeAll()                              //   删除全部字符串
字符串的大小写转换
Str.uppercased()                             //  全部转化为大写
Str.lowercased()                          //  全部转化为小写
字符串的首字母大写 
Str.capitalized
检查字符串的前缀和后缀
Str.hasPrefix("字符")                     //      检查字符串荐椎是否含有某个字符
Str.hasSuffix("字符")                   //      检查字符串后缀是否含有某个字符



1月29日
swift数组
var array:[数组类型]           //   数组的类型是明确的，只能存放该类型的值
array = [数组元素]                   //  var let 分别定义可变数组和不可变数字
维数组里添加元素
array.append(元素)
根据索引的位置插入元素
array.insert(元素,at:数字)       //   在某个位置添加元素
array.removeLast(数字，删除元素个数)               //   从末尾删除多少个元素
array.removeFirst(数字)                     //   从开始删除多少个元素，如果数字不指定则删除一个
array.remove(at:数字)                //   根据元素下表删除元素
array.removeSubrange(1...3)            //   删除某个范围内的元素
array.removeAll()              //   删除所有元素
array[数字] = 值                         //  修改某个元素的值
array[1...3] = [  ,  ,  ]           //    修改多个元素的值

元素之间有一定的联系可以定义元组
如   let yz = (name:anna,age:16,height:170)   _下划线表示一个忽略值
  let (name,age,height) = (anne,16,170)
name     //   直接访问

字典(Dictionary)
var dict : [String:String]          // 第一个类型为健类型，第二个类型为值类型
dict = ["name":"jack","age":"18","height":"170"]
字典的拼接
for (key,value) in dict2{
dict[key] = value
}
字典的遍历
for (key,value) in dict{
print("\(key) = \(value)")
}
dict[key] = value                  //  字典中键值对的修改，如果健存在就是修改，不存在就是添加
dict.updataValue(value,forKey:"key")
dict.remove(forKey:key)                // 键值对的删除

数组中放入不同类型的元素
var array:[Any]
array = []
字典中
var dict[Any]


3月5日
enum 定义枚举
enum name{
case value
case value
}
通过switch来匹配枚举值
switch name {
 case .name:
 
}

闭包   一段代码块
定义闭包
let name {
}
 

3月6日
一般的闭包定义方式
let name:(参数类型)->(返回值类型)={
(参数名以及参数类型)->  in
}
 // 闭包可以隐士返回
 
 类的定义
 class name{
 var name:String = ".."
}
let p = name()  // 实例化类
实例化之后才能使用类

结构体是值类型，类是引用类型  结构体改变值时原始值不会改变，引用类型则会改变
结构体的定义
struct name{
 var name:String = ".."
}
let p = name()   // 实例化结构体

swift能继承父类，而结构体不行  引用类型为指针传递


3月7日
储存属性就是储存在对象实例中的常量和变量
延迟属性就是在使用的时候才进行初始化
lazy关键字

计算数值型
get用来取值，封装一个取值的过程
set用来取值，封装一个设值得过程

class Square{
    var width:Double = 0.0
    var girth:Double{
        get{
           return width * 4
        }
        set(newGirth){
           width = newGirth
        }
   }
}
let q = Square()
q.width = 10.0


3月8日
类型属性用关键字class修饰的属性
class修饰的类型属性只能是计算属性，不能是储存属性

方法
类中的方法使用
class num1 {
   func count(num1:Int,num2:Int)->Int{
   return num1 + num2 
  }
}
let num = num1()
num.count(num1:50,num2:50)

// 枚举中方法的使用
enum num2 {
   caseL
   func count2(num1:Int,num2:Int)->Int{
       return num1 + num2
   }
}
let n = num2.L
n.count2(num1:50,num2:50)

// 结构体中方法的使用
struct  num3{
    func count3(num1:Int,num2:Int)->Int{
       return num1 + num2
   }
}
let c = num3()
c.count3(num1:50,num2:50)

外部参数名
func ci(Jack age1:Int,Allen age2:Int)
Jack,Allen为外部参数，age为内部参数，外部参数可以忽略


3月9日
类的继承
class Father{
   var age = 18
   var height = 170.0
   func result(){ 
       print("我是父类的方法")
   }
}
// 子类继承父类
class Son:Father{
   var age1 = 15  // 名称不能与父类重复
}
//   只能一级一级的继承 不能一个子类继承多个父类

方法的重写 当父类的方法不能满足子类的时候，需要子类自己取扩充，即使用override关键字对父类方法进性重写
class Person{
    var name : String = ""
    var age : Int?
    
    // 构造函数 初始化
    init(name:String,age：Int){
         self.name = name
         self.age = age 
         print(self.age!,self.name)  // age为可选类型，需要解包、
         
    }
}
class son:Person{
     var height : float?
     override init(name:String,age:Int){
         height = 175.0
         
         super.init(name:name,age: age)   // 需要再次调用父类的init方法，否则视为自己重新写的方法并不是父类的
     }
}

let s = son(name:"Jack",age:15)  //  假设还需要身高的数据，即父类方法无法满足子类要求
s.height

方法的重载:快速为方法添加新的属性，属性可以通过外部传入

class student:Person{
    var sex : String?
    
    init(name:String,age:Int,sex:String){
          self.sex =sex
          
          super.init(name:name,age)
          }
}
let s1 = student(name:"Anna",age:18,sex: "女")
s1.sex


3月10日
构造方法   为每个实例的每个属性设置初始值和为其执行必要的准备和初始化任务。
swift中的构造器无返回值。

3月12日
//  隐士构造方法，如果在类中没有写构造方法，系统会默认生成一个构造方法。
class cat {
   var age = 0

}
let c = cat()


3月13日
// 指定构造方法
class Person{
  var name : String = ""  // 必须初始化，或者在构造函数初始化
  //  默认不带参数的构造方法
  init(){   
   name = "Allen"
  }
  init(namne:String){
    self.name = name
  }
   //  可选参数，可选类型
   var age = Int?
   init(name:String,age:Int){
      slef.name = name 
      self.age! = age
   }
}

//便利构造函数（不能被重写）
即满足条件爱会实例化，避免不必要的内存开销
class Person1{
    var name : String = ""
    init(name:String){
    //指定构造器
         self.name = name
    }
    
    convenience init(name:String,height:Int){
        //  便利构造器，不需要全部初始化成员变量
        self.init(name:name)
    }
}


3月15日
协议声明
protocol pro{
    // 协议的属性或者方法
    //  只需声明协议
    func text()
}

class Person:pro{
   // 遵循协议必须实现协议的方法或者属性
   func text(){
      code
   }
}
let p = Person()
p.text()

结构体和枚举都能遵循协议








