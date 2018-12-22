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
