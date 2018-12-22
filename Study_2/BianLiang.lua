BianLiang = {}
print(BianLiang[0])
--变量作用域
BianLiang.a = "BianLiang a"
local b = 66
BianLiang.out = 666
function joke()
c = 5               --全局变量
local d = 6         --局部变量
print("b " .. b)
end

joke()
print(c,b)

e = 6
f = 7

function joke2(...)
print(...)
end

joke2(e,c)

return BianLiang
