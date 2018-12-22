--局部变量和全局变量测试
local m = require("BianLiang")

print("BianLiang->"..m.out)--要访问另外一个Lua文件中的变量，需先定义 XXX.变量名 再访问 XXX.变量名
--测试结果：local变量只能在当前的lua文件中使用

array = {}
array[1] = 1
array[2] = 2
print(array[2])

array["a"] = "a"
array["b"] = "b"
print(array["a"])



