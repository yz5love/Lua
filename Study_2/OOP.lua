--�������
--Person Class

MyPerson = { name = "",age = 0 }
--��������к���ʹ�ã�:������ô�������ö����������͵Ĳ�������Ϊð�ţ�:���Դ�self
function MyPerson:new(myName,myAge)
	local _newPerson = {}
	setmetatable(_newPerson,self)
	self.__index = self
	self.name = myName
	self.age = myAge
	return _newPerson
end
--��������к���ʹ�õ㣨.������ô���������һ����������͵Ĳ���
function MyPerson.new2(self,myName,myAge)
	local _newPerson = {}
	setmetatable(_newPerson,self)
	self.__index = self
	self.name = myName
	self.age = myAge
	return _newPerson
end

function MyPerson.love(myName,myAge)
	local _newPerson = {}
	setmetatable(_newPerson,MyPerson)
	MyPerson.__index = MyPerson
	MyPerson.name = myName
	MyPerson.age = myAge
	return _newPerson
end
