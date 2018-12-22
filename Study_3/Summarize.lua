--Lua学习总结
--【注释】
--单行注释“--”
--多行注释：“--[[内容--]]”
--【标示符】即：变量名的定义
--允许：A-Z or a-z or 下划线_字母 or _数字
--不允许：_大写字母（因为Lua的保留字也是这样的，避免冲突），不允许特殊字符
--提示：Lua是一个区分大小写的编程语言，比如：A和a在Lua中是2个不同的变量
--【保留关键字】
-- and break do else elseif end false for function if in local nil not or repeat return then true until while
--提示：关键字不能用于定义变量和常量
--提示2：常量用->下划线+一串大写字母
--【全局变量】
--1.默认未声明的变量为全局变量
--2.变量赋不赋值都不会出错。赋值即创建了变量，不赋值变量为nil
--3.删除变量赋值nil即可
--【局部变量】
--1.声明关键字 local 即为局部变量
--2.作用域：从声明的位置到所在的语句块结束
--【数据类型】
--nil:无效值。作比较值时，同等于false。比较时加上""->if a == "nil"
--boolean:布尔值，包含2个值：false 和 true
--number:表示双精度类型的实浮点数
--string:字符串。由''或""来表示，也可以用[[]]来表示，如：a = [[I'm a]]
--function:函数。function MyTest() ... end，函数的参数可用匿名函数（就是没得方法名字的函数）
--userdata:用户自定义的数据。表示任意存储在变量中的C数据结构。
--thread:表示执行的独立线程，用于执行协同程序。拥有自己独立的栈、局部变量和指令指针，可以与其他协同程序共享变量和其他大部分东西
--table:表。可以定义类似C#中的数组、列表、字典、类等。Lua中数组的索引从1开始，而不是0，切记！长度不会固定，有数据就自动增长，没复制的元素都是nil
--【额外知识点】
--..:连接2个字符串
--#:计算数据的长度
--线程跟协程的区别：线程可以同时多个运行，而协程任意时刻只能运行一个，并且处于运行状态的协程只有被挂起（suspend）时才会暂停。
--【循环语句】
--提示：循环在表达式后必须带do，且最后以end收尾。
--[[
<while>:
语法：
while(条件)
do
<执行体>
end

<for>:
<数值for>循环的语法：
语法：
for var=初始值,最终值,增长值 do
	<执行体>
end
提示：
1.addVal不是必须的。如果不写的话，默认会为1。
2.三个表达式的值，在循环开始之前一次性求值，以后不再进行求值。

<泛型for>循环的语法：Lua的泛型for循环通过一个迭代器函数来遍历所有的值，类似C#，java中foreach语句。
语法：
for 索引值,索引对应的元素值 in ipairs(泛型数据) do
	<执行体>
end

<repeat...until>:重置...直到位置
语法：
repeat
	<执行体>
until(执行条件)
提示：当执行条件为真的时候结束。
-]]
--循环控制语句：break。用于控制程序的流程。退出当前循环或语句，并开始执行后面的语句。
--【流程控制】
--提示：1.条件表达式可以是任何值，false和nil为假，true和非nil为真。2.if后面必须带then，最后以end收尾。
--[[
<if>:
语法：
if(布尔表达式)
then
	<执行体>
end
<if...else>:
if(布尔表达式)
then
	<true->执行体>
else
	<false->执行体>
end
<if...elseif...else>:
语句：
if(布尔表达式) then
	<true->执行体>
elseif(布尔表达式) then
	<true->执行体>
else
	<false->执行体>
--]]
--【实例】
--泛型for循环的使用：
a = {"女人","都是","好好好"}
for key,val in ipairs(a) do
	print("索引值："..key.."--元素值："..val)
end
--repeat...until的使用：
b = 1
repeat
	b = b + 1
until(b == 10)
print(b)

if(100.000) then
print("0为真")
end

if(#a == 4) then
print("a的长度为"..#a)
elseif (#a == 5) then
print("a的长度为"..#a)
else
print("a的长度为"..#a)
end
