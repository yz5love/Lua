--Ԫ��Ĳ���
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

setmetatable(table1,{ __newindex = _tempTable  })--���newinde��ֵ��һ��table����newindex������ʱ��table�ᱻ��ֵ

print(table1.a)

table1.b = "b"--�ڶ�table������Ԫ����Ԫ����Ϊnewindex�󣬵���table��һ�������ڵ�key��ֵʱ����ᴥ��newindexԪ������������ɸ�ֵ���߼�����ֵ
--���δ����newindexԪ��������ֱ�ӽ��и�ֵ
--��ʱ����newindex�Ҷ�_tempTable�����˸�ֵ
print(table1.b)
--��ʱ_tem.b��ֵ=b
print(_tempTable.b)
local _cg_Count = collectgarbage("count")
print(_cg_Count)
