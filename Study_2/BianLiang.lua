BianLiang = {}
print(BianLiang[0])
--����������
BianLiang.a = "BianLiang a"
local b = 66
BianLiang.out = 666
function joke()
c = 5               --ȫ�ֱ���
local d = 6         --�ֲ�����
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
