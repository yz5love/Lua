--数据类型
print("字符串的类型="..type("Hello World"))
print("数字的类型="..type(5.20*1314))
print("布尔的类型="..type(true))
print("为赋值的标识符的类型="..type(yz))
local function MyFunction()
	print("这是我自己的函数！")
	end
print("函数的类型="..type(MyFunction))
--使用table自定义数组
local MyTable = { 1,2,3,4,5}
print("自定义表（table）的类型="..type(MyTable))
for i,v in ipairs(MyTable)
do
	print("自定义table类型的数组中的值="..v)
end
local MyTable2 = {}
MyTable2[1] = "yang"
MyTable2[2] = "zhi"
for i,v in ipairs(MyTable2)
do
	print("自定义table类型的字典中的值"..v)
end

local myVar;
if(myVar == nil) then
print("myVar为nil")
else
print("myVar的类型="..type(myVar))--菜鸟教程中判断type(myVar)==nil，个人认为多此一举吧，或者说我目前还想象不到这种应用场景
print("myVar类型的类型="..type(type(myVar)))--所有数据类型的type的是string - -!
end
isTrue = true
if(isTrue == true) then
print(isTrue)
else
print(isTrue)
end

str1 = "双引号的字符串"
str2 = '单引号的字符串'
str3 = [[大括号的字符串]]
print(str1)
print(str2)
print(str3)
--字符串前面加#号，可以计算字符串的长度
print("str3的长度"..str3)
--数值for循环第一个值必须要有初始值，第二个值初始值要到达的值，第三个值为增加值（默认为增长值为1）
function Add(number)
	print("传入的参数="..number)
	local _total = 0
	for i = 0,number
	do
		_total =  _total + i
		print(_total)
	end
end
Add(2)
--当索引键为字符串时，取索引值的一种简化写法=>表.索引值
myTable3 = { }
myTable3["y"] = "yang"
myTable3["z"] = "zhi"
print(myTable3.y)
myTable4 = {}
myTable4[1] = "1-yang"
--print(myTable4.1)--如果索引键为数值时，不能使用简化写法。直接=>表[数值]
print(myTable4[1])
local _while_Var = 0
while(_while_Var < 10)
do
	_while_Var = _while_Var + 1
	print("_while_Var = ".._while_Var)
	if(_while_Var == 5)
		then
		print("结束循环")
		break
	end
end
local _repeat_Var = 0
repeat
	_repeat_Var = _repeat_Var + 1
	print("_repeat_Var = ".._repeat_Var)
until(_repeat_Var >= 2)--当判断语句为true就会停止执行。MMP。人家都为false停止，你TM要为true。害的我第一次使用死循环--！

function MyFunction2(number,otherFunction)
	print("MyFunction2 number = "..number)
	otherFunction(number)
end
function OtherFunction(otherNum)
	local _otherNum = otherNum
	while(_otherNum < 10)
	do
		_otherNum = _otherNum + 1
		print(_otherNum)
	end
end
--匿名函数。个人目前觉得，这样写代码不好看，显得太乱，可读性低！
MyFunction2(5,function(num)
					while(num < 10)
					do
						num = num + 1
						print("匿名函数："..num)
					end
			    end
)
print("变量赋值为函数>>>>")

function MyFunction3(num,func)
	print(num + func)
end

function VarFunction()
return 10
end
--如果赋值函数没有参数需要括号
b = VarFunction()
MyFunction3(10,b)
--如果赋值函数有参数则不用括号
c = OtherFunction
MyFunction2(4,c)
-- 函数： option_scpe function name(arg1,arg2,...,argn) option_scpe:可选范围，默认全局，加上local局部函数
local function MyLocalFunction(...)
	print(...)
end
MyLocalFunction("爱","江山","更爱","美人")
--可变参数使用“...”表示
local function MyChagneParFcuntion(...)
	local _par = {...}
	local _var = 0
	for i,v in ipairs(_par)
	do
	print(v)
	end

	local _length = select("#",...)--select('#',...)可变获取可变参数“...”的长度
	print("参数的长度=".._length)
	for i = 1, _length
	do
	local _var = select(i,...)--select(n,...) 返回可变参数的第n个可变实参
	print("获取可变参数第"..i.."个参数的值=".._var)
	end
end
MyChagneParFcuntion(1,2,3,4,5,6)
--多个返回值
local function MyMultipeVar()
	return {1,2,3}
end
local _myMultipeVar = MyMultipeVar()
print(_myMultipeVar[1])
--关系运算符：==，<,>等等、逻辑运算符：and,or,not、算术运算符+、-、*、/、%、^、-
local _myRelationalOperator = 1
local _myRelationalOperator2 = 2

if(_myRelationalOperator ~= _myRelationalOperator2) then
print("关系运算符：不等于~=")
end
local _myOper3 = 1
if(_myRelationalOperator == _myOper3) then
print("关系运算符：等于==")
end

if(_myRelationalOperator ~= _myRelationalOperator2 and _myRelationalOperator == _myOper3) then
print("逻辑运算符：逻辑与：and")
end

if(_myRelationalOperator == _myRelationalOperator2 or _myRelationalOperator == _myOper3) then
print("逻辑运算符：逻辑与：or")
end
--not为假（）里面为假，则假假得真
if(not(_myRelationalOperator == _myRelationalOperator2 or _myRelationalOperator ~= _myOper3)) then
print("逻辑运算符：逻辑与：not")
end
--关系运算符和逻辑运算符的关系：逻辑预算符中的运算数可以是关系运算的结果
--其他运算符：..连接两个字符串、#：一元运算符，返回字符串的长度
--表（table）的操作
local myTableA = {1,2,3}
local myTableB = myTableA
print(myTableA[1])
myTableA = nil
print(myTableB[1])

--元表(metatable)，就是在一个表(table)，然后在里面注册了一些事件。
--为表设置元表。setmetatable(table,metatable)
--在对一个表设置了元表后，当对表进行与注册事件相同的操作时，则将会触发事件
local myMetaTable_0 = {}
myMetaTable_0.__add = function(t1,t2)
						print("t1="..t1[1].."-t2="..t2[1])
						return t1[1] + t2[1]
					  end
myMetaTable_0.__index = function(table,key)
						print("key="..key)
						local _length = select("#",table)
						table[2] = 10
						print("表的长度=".._length)
							if(key== 2) then
								print("好巧你也等于2")
								--return 2
							end
						end
local myMetaTable_1 = {1}
--myMetaTable_1[1] = 2
local myMetaTable_2 = {2}
--myMetaTable_2[1] = 3
setmetatable(myMetaTable_1,myMetaTable_0)
setmetatable(myMetaTable_1,myMetaTable_0)
local _metaTable = myMetaTable_1 + myMetaTable_2
print(_metaTable)
print(myMetaTable_1[2])
print(myMetaTable_1[2])
--local function NewIndex(ta)

print("__index=table>>>>")

local mtTable_0 = {}
local TempTable = {}
TempTable[520] = 1314
mtTable_0.__index = TempTable
local NewTable = {}
NewTable[222] = 666
print(NewTable[520])
setmetatable(NewTable,mtTable_0)
print(NewTable[520])

print("__index = function>>>")

local function FindIndex(table,index)
	local _length = select('#',table)
	local _isExist = false
	for i = 1,_length
	do
		if(_length == index) then
			_isExist = true end
	end
	if(_isExist == false) then
		return 999 end
end

local mtTable_1 = {}
mtTable_1.__index = FindIndex
local myMetaTable_Func = {1,2,3,4,5,6,7}
setmetatable(myMetaTable_Func,mtTable_1)
print("获取存在的索引值="..myMetaTable_Func[1])
print("获取不存在的索引值="..myMetaTable_Func[8])
