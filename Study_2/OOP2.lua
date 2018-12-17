--OOP
require("OOP")
--使用冒号（:）来访问类的成员函数
local _yz = MyPerson.new2(MyPerson,"yangzhi",25)
local _yz2 = MyPerson.new2(MyPerson,"yz2",18)
--使用点好（.）来访问；类的属性
print("yz/name=".._yz.name.."/age=".._yz.age)
print("yz2/name=".._yz2.name.."/age=".._yz2.age)
