--��������
print("�ַ���������="..type("Hello World"))
print("���ֵ�����="..type(5.20*1314))
print("����������="..type(true))
print("Ϊ��ֵ�ı�ʶ��������="..type(yz))
local function MyFunction()
	print("�������Լ��ĺ�����")
	end
print("����������="..type(MyFunction))
--ʹ��table�Զ�������
local MyTable = { 1,2,3,4,5}
print("�Զ����table��������="..type(MyTable))
for i,v in ipairs(MyTable)
do
	print("�Զ���table���͵������е�ֵ="..v)
end
local MyTable2 = {}
MyTable2[1] = "yang"
MyTable2[2] = "zhi"
for i,v in ipairs(MyTable2)
do
	print("�Զ���table���͵��ֵ��е�ֵ"..v)
end

local myVar;
if(myVar == nil) then
print("myVarΪnil")
else
print("myVar������="..type(myVar))--����̳����ж�type(myVar)==nil��������Ϊ���һ�ٰɣ�����˵��Ŀǰ�����󲻵�����Ӧ�ó���
print("myVar���͵�����="..type(type(myVar)))--�����������͵�type����string - -!
end
isTrue = true
if(isTrue == true) then
print(isTrue)
else
print(isTrue)
end

str1 = "˫���ŵ��ַ���"
str2 = '�����ŵ��ַ���'
str3 = [[�����ŵ��ַ���]]
print(str1)
print(str2)
print(str3)
--�ַ���ǰ���#�ţ����Լ����ַ����ĳ���
print("str3�ĳ���"..str3)
--��ֵforѭ����һ��ֵ����Ҫ�г�ʼֵ���ڶ���ֵ��ʼֵҪ�����ֵ��������ֵΪ����ֵ��Ĭ��Ϊ����ֵΪ1��
function Add(number)
	print("����Ĳ���="..number)
	local _total = 0
	for i = 0,number
	do
		_total =  _total + i
		print(_total)
	end
end
Add(2)
--��������Ϊ�ַ���ʱ��ȡ����ֵ��һ�ּ�д��=>��.����ֵ
myTable3 = { }
myTable3["y"] = "yang"
myTable3["z"] = "zhi"
print(myTable3.y)
myTable4 = {}
myTable4[1] = "1-yang"
--print(myTable4.1)--���������Ϊ��ֵʱ������ʹ�ü�д����ֱ��=>��[��ֵ]
print(myTable4[1])
local _while_Var = 0
while(_while_Var < 10)
do
	_while_Var = _while_Var + 1
	print("_while_Var = ".._while_Var)
	if(_while_Var == 5)
		then
		print("����ѭ��")
		break
	end
end
local _repeat_Var = 0
repeat
	_repeat_Var = _repeat_Var + 1
	print("_repeat_Var = ".._repeat_Var)
until(_repeat_Var >= 2)--���ж����Ϊtrue�ͻ�ִֹͣ�С�MMP���˼Ҷ�Ϊfalseֹͣ����TMҪΪtrue�������ҵ�һ��ʹ����ѭ��--��

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
--��������������Ŀǰ���ã�����д���벻�ÿ����Ե�̫�ң��ɶ��Եͣ�
MyFunction2(5,function(num)
					while(num < 10)
					do
						num = num + 1
						print("����������"..num)
					end
			    end
)
print("������ֵΪ����>>>>")

function MyFunction3(num,func)
	print(num + func)
end

function VarFunction()
return 10
end
--�����ֵ����û�в�����Ҫ����
b = VarFunction()
MyFunction3(10,b)
--�����ֵ�����в�����������
c = OtherFunction
MyFunction2(4,c)
-- ������ option_scpe function name(arg1,arg2,...,argn) option_scpe:��ѡ��Χ��Ĭ��ȫ�֣�����local�ֲ�����
local function MyLocalFunction(...)
	print(...)
end
MyLocalFunction("��","��ɽ","����","����")
--�ɱ����ʹ�á�...����ʾ
local function MyChagneParFcuntion(...)
	local _par = {...}
	local _var = 0
	for i,v in ipairs(_par)
	do
	print(v)
	end

	local _length = select("#",...)--select('#',...)�ɱ��ȡ�ɱ������...���ĳ���
	print("�����ĳ���=".._length)
	for i = 1, _length
	do
	local _var = select(i,...)--select(n,...) ���ؿɱ�����ĵ�n���ɱ�ʵ��
	print("��ȡ�ɱ������"..i.."��������ֵ=".._var)
	end
end
MyChagneParFcuntion(1,2,3,4,5,6)
--�������ֵ
local function MyMultipeVar()
	return {1,2,3}
end
local _myMultipeVar = MyMultipeVar()
print(_myMultipeVar[1])
--��ϵ�������==��<,>�ȵȡ��߼��������and,or,not�����������+��-��*��/��%��^��-
local _myRelationalOperator = 1
local _myRelationalOperator2 = 2

if(_myRelationalOperator ~= _myRelationalOperator2) then
print("��ϵ�������������~=")
end
local _myOper3 = 1
if(_myRelationalOperator == _myOper3) then
print("��ϵ�����������==")
end

if(_myRelationalOperator ~= _myRelationalOperator2 and _myRelationalOperator == _myOper3) then
print("�߼���������߼��룺and")
end

if(_myRelationalOperator == _myRelationalOperator2 or _myRelationalOperator == _myOper3) then
print("�߼���������߼��룺or")
end
--notΪ�٣�������Ϊ�٣���ټٵ���
if(not(_myRelationalOperator == _myRelationalOperator2 or _myRelationalOperator ~= _myOper3)) then
print("�߼���������߼��룺not")
end
--��ϵ��������߼�������Ĺ�ϵ���߼�Ԥ����е������������ǹ�ϵ����Ľ��
--�����������..���������ַ�����#��һԪ������������ַ����ĳ���
--��table���Ĳ���
local myTableA = {1,2,3}
local myTableB = myTableA
print(myTableA[1])
myTableA = nil
print(myTableB[1])

--Ԫ��(metatable)��������һ����(table)��Ȼ��������ע����һЩ�¼���
--Ϊ������Ԫ��setmetatable(table,metatable)
--�ڶ�һ����������Ԫ��󣬵��Ա������ע���¼���ͬ�Ĳ���ʱ���򽫻ᴥ���¼�
local myMetaTable_0 = {}
myMetaTable_0.__add = function(t1,t2)
						print("t1="..t1[1].."-t2="..t2[1])
						return t1[1] + t2[1]
					  end
myMetaTable_0.__index = function(table,key)
						print("key="..key)
						local _length = select("#",table)
						table[2] = 10
						print("��ĳ���=".._length)
							if(key== 2) then
								print("������Ҳ����2")
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
print("��ȡ���ڵ�����ֵ="..myMetaTable_Func[1])
print("��ȡ�����ڵ�����ֵ="..myMetaTable_Func[8])
