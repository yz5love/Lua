--协同程序（Coroutine）

--[[
进程：
概念：一个具有独立功能的程序关于某个数据集合的一次运行活动。它是操作系统动态执行的基本单元。

线程：
概念：程序执行流的最小单元

协程：
概念：

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


--create：创建一个协程，并返回一个协程
co = coroutine.create(MyCoroutineFuc)
print("使用create后的返回值，打印出来的值>>>")
print(co)
print("使用create后返回值的类型="..type(co))
--resume：启用创建的协程
coroutine.resume(co)
--status：查询协程的状态
print("线程co的状态="..coroutine.status(co))

print("----------------------")
--wrap：创建一个协程，并返回一个函数
co1 = coroutine.wrap(MyCoroutineFuc)
co1()
print("使用wrap后返回值的类型="..type(co1))
print("----------------------")
--返回一个正在运行的协程
--使用打印出来是一个协程号：thread:xxxx
local _cor_Run = coroutine.running()
print("使用running后返回值的类型="..type(_cor_Run))
print("使用running后的返回值，打印出来的值>>>")
print(_cor_Run)

local _co2 = coroutine.create(MyCoroutineFuc3)
--coroutine.resume(_co2)
print("线程co2的状态="..coroutine.status(_co2))
coroutine.resume(_co2);
print("线程co2的重启后的状态="..coroutine.status(_co2))
