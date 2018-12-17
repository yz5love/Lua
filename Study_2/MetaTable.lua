--元表的操作
--newindex
local metaTable = {}
--metaTable.__newindex = {}

local table1 = { a = "a" }

local function MyFuc(table,key,val)
		print(key.."-"..val)
		return val
end

local function FindeIndex(table,key)
	print(key)
end

local _tempTable = {}
--_tempTable.__index = FindeIndex

setmetatable(table1,{ __newindex = _tempTable  })--如果newinde的值是一个table，当newindex被触发时，table会被赋值

print(table1.a)

table1.b = "b"--在对table设置了元表且元方法为newindex后，当对table中一个不存在的key赋值时，则会触发newindex元方法，而不完成赋值或者继续赋值
--如果未设置newindex元方法，则直接进行赋值
--此时触发newindex且对_tempTable进行了赋值
print(table1.b)
--此时_tem.b的值=b
print(_tempTable.b)
local _cg_Count = collectgarbage("count")
print(_cg_Count)
