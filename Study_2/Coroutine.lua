--Эͬ����Coroutine��

--[[
���̣�
���һ�����ж������ܵĳ������ĳ�����ݼ��ϵ�һ�����л�����ǲ���ϵͳ��ִ̬�еĻ�����Ԫ��

�̣߳�
�������ִ��������С��Ԫ

Э�̣�
���

]]--

local function MyCoroutineFuc()
	print("MyCoroutineFuc")
end

local function MyCoroutineFuc2(word)
	print("MyCoroutineFuc2_"..word)
end

local function MyCoroutineFuc3()
	for i = 0,10 do
		print(i)
		if(i == 6) then
			coroutine.yield() end
	end
end


--create������һ��Э�̣�������һ��Э��
co = coroutine.create(MyCoroutineFuc)
print("ʹ��create��ķ���ֵ����ӡ������ֵ>>>")
print(co)
print("ʹ��create�󷵻�ֵ������="..type(co))
--resume�����ô�����Э��
coroutine.resume(co)
--status����ѯЭ�̵�״̬
print("�߳�co��״̬="..coroutine.status(co))

print("----------------------")
--wrap������һ��Э�̣�������һ������
co1 = coroutine.wrap(MyCoroutineFuc)
co1()
print("ʹ��wrap�󷵻�ֵ������="..type(co1))
print("----------------------")
--����һ���������е�Э��
--ʹ�ô�ӡ������һ��Э�̺ţ�thread:xxxx
local _cor_Run = coroutine.running()
print("ʹ��running�󷵻�ֵ������="..type(_cor_Run))
print("ʹ��running��ķ���ֵ����ӡ������ֵ>>>")
print(_cor_Run)

local _co2 = coroutine.create(MyCoroutineFuc3)
--coroutine.resume(_co2)
print("�߳�co2��״̬="..coroutine.status(_co2))
coroutine.resume(_co2);
print("�߳�co2���������״̬="..coroutine.status(_co2))
