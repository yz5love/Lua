--面向对象
--Person Class

MyPerson = { name = "",age = 0 }
--如果对象中函数使用（:），那么参数不用对象自身类型的参数，因为冒号（:）自带self
function MyPerson:new(myName,myAge)
	local _newPerson = {}
	setmetatable(_newPerson,self)
	self.__index = self
	self.name = myName
	self.age = myAge
	return _newPerson
end
--如果对象中函数使用点（.），那么参数必须带一个自身的类型的参数
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
