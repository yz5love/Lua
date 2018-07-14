i = 1;
for j = i, 10,3
do
print(j);
i = j;
end
print(i);
if(i == 10) then
print("666"); end

myFounction = function(param)
print("我的打印" , param);
end

myFounction();

function add(n1,n2,functionPrint)
result = n1 + n2;
functionPrint(result);
end
add(520,1314,myFounction);

s,b = string.find("abcd","ab");
print(s,b);
--  取最大值
function maximum(a)
local mi = 1;
local m = a[mi];
for i,val in ipairs(a) do
	if(val > m) then
	     mi = i;
		 m = val;
    end
end
return m,mi;
end
print(maximum({8,10,23,12,5}));

function add(...)
	local s = 0;
	for i,v in ipairs{...} do
	s = s + v;
	end
	return s;
end
print(add(1,2,3,4,5,6));

function average(...)
	result = 0;
	local arg = {...}
	for i,v in ipairs(arg) do
		result = result + v;
	end
	print("总共传入" .. #arg.. "个数");
	return result/#arg;
end
print("平均值为" , average(10,12));

function fwrite(fmt,...) --->固定的参数fmt+可变参数...;固定参数必须放在可变参数之前
	return io.write(string.format(fmt,...));
end

fwrite("yangzhi\n");    --->fmt = "杨志"，没有变长参数
fwrite("%d%d\n",1,2);   --->fmt = "%d%d"，可变参数为1和2

--通常在遍历变长参数的时候只需要使用{...}，然而边长参数可能会包含一些nil，那么就可以用select函数来访问变长参数了：select('#',...)或者select(n,...)
--select('#',...)返回可变参数的长度
--select(n,...)用于访问n到select('#'...)的参数
--调用select时，必须传入一个固定实参selector(选择开关)和一系列变长参数。如果selector为数字n，那么select返回它的第n个可变实参，否者只能为字符串“#",这样select会返回变长参数的总数
--自我总结：使用select,一个参数要么为‘#’(获取可变参数的长度)，要么为n（获取可变参数中的第几个参数） ，第二个参数为可变参数“...”
do
	function foo(...)
		for i = 1,select('#',...) do
			local arg = select(i,...);
			print("arg",arg);
		end
	end

	foo(1,2,3,4);
end
--算数运算符：加+，减-，乘*，除/,取余%,乘幂^,负号（减号一样的）-
--关系运算符：等于：==；不等于：~=；大于：>;小于：<;大于等于：>=;小于等于：
a,b = 1,2
if(a ~= b) then
print("a不等于b");
end
--逻辑运算符：逻辑与：and;逻辑或：or;逻辑非：not
if(a and b) then
print("a,b条件为true");end
--其他运算符：连接连个字符串：..;#一元运算符，返回字符串或表的长度。
a,b = "Shi","BiBi";
print("连接字符串a和b",a..b);
print("b字符串的长度",#b);
--运算优先级
--1：^
--2:not -(unary)
--3:* /
--4:+ -
--5:..
--6:< > <= >= ~= ==
--7:and
--8:or

--[[字符串：三种]]
--1."a"
--2.'b'
--3.[[c]]
str1 = "Lua"
print("\"字符串str1=\"",str1);
str2 = 'YangZhi';
print('字符串2=',str2);
str3 = [[YZ]];
print([[字符串3=]],str3);
--转义字符
print("\a");--响铃
print("a1\b");--退格
print("a2\f");--换页
print("a3\n");--换行
print("a4\r");--回车
print("a5\t");--水平制表
print("a6\v");--垂直制表
print("a7\\");--代表一个反斜字符"\'
print("a8\'");--代表一个单引号字符
print("a9\"");--代表一个双引号字符
print("a10\0");--空字符null
print("\ddd");--1到3位八进制数所代表的任意字符
print("\xhh");--1到2位十六进制所代表的任意字符
--字符串操作
print(string.upper("yz"));--将字符串全部转为大写字母
print(string.lower("YZ"));--将字符串全部转为小写字母
print(string.gsub("YangZhi","g","6",1));--string.gsub(main,find,replace,num);字符串替换。main：需要替换的字符串，find：被替换的字符，replace:替换的字符，num:不填，则全部替换，填了，替换几次
print(string.find("YangZhi","a",1));--string.find(str,substr,index);在一个指定的目标字符串中搜索指定的内容（第三个参数为开始搜索的索引），返回指定搜索内容的具体位置。不存在则返回nil
print(string.reverse("YangZhi"));--字符串反转。就是倒过来
print(string.format("i love %d",0));--格式化字符串
print(string.char(97,98,99,10));--string.char()将整形数字转成字符并连接
print(string.byte("YangZhi",7));--string.byte(arg,index);将字符串转换为整数值，arg：要转换的字符串，index：指定那个位置的字符，默认第一个字符
print(string.len("yangzhi"));--计算字符串的长度
print(string.rep("yangzhi",2));--string.rep(arg,count);返回字符串的n个拷贝；arg:要拷贝的字符串；count:拷贝多少次
print("I Lo" .. "VE U");--链接连个字符串
for word in string.gmatch("Yang Zhi","%a") do--返回一个迭代器函数，每一次调用这个函数，返回一个在字符串str找到的下一个符合pattern描述的子串。如果参数pattern描述的字符串没有找到，迭代函数返回nil
	print(word);
end
print(string.match("i 520 love u","%d+ %a+"));--string.match(str,pattern,init);只寻找源字符串str中的第一个配对。参数ini可选，指定搜寻过程的起点，默认为1
--格式字符串可能包含的转义码
print(string.format("yz %c",12));--%c：接受一个数字，并将其转化为ASCLL码表中对应的字符
print(string.format("yz %d %i",12,21));--%d %i：接受一个数字并将其转化为有符号的整数格式
print(string.format("yz %o",1));--%o：接受一个数字并将其转化为八进制数格式
print(string.format("yz %u","1"));--%u：接受一个数字并将其转化为无符号的整数格式、
print(string.format("yz %x",123));--%x：接受一个数字并将其转化为十六进制数格式，适应小写字母
print(string.format("yz %X",123));--%X：接受一个数字并将其转化为十六进制数格式，适应大写字母
print(string.format("yz %e",123));--%e：接受一个数字并将其转化为科学记数法格式，使用小写字母e
print(string.format("yz %E",123));--%E：接受一个数字并将其转化为科学记数法格式，使用大写字母end
print(string.format("yz %f",123));--%f：接受一个数字并将其转化为浮点数格式
print(string.format("yz %g",123));--%g：接受一个数字并将其转化为%e及%f中较短的一种格式
print(string.format("yz %G",123));--%G：接受一个数字并将其转化为%E及%F中较短的一种格式
print(string.format("yz %q",123));--%q：接受一个数字并将其转化为可安全被Lua编译器读入的格式
print(string.format("yz %s","c"));--%s：接受一个字符串并按照给定的参数格式化该字符串
for i = 0,10000000 do
	print(i);
	if(i > 0) then break end
end
--细化格式
print(string.format("yz %+s","abc"));--符号：一个+号表示其后的数字转义符将让整数显示正号，默认情况下只有负数显示符号
print(string.format("yz"));--占位符：一个0，在后面指定了字符串宽度时占位用。不填时的默认占位符时空格 没懂起
print(string.format("yz"));--对齐标识符：在指定了字符串宽度时，默认为右对齐，增加-号可以改变为左对齐 没懂起
--匹配模式
for item in string.gmatch("abcd123",".") do--.：与任何字符配对
	print(item);
end

for item in string.gmatch("yangzhi123","%a") do--%a：与任何字母配对
	print(item);
end

for item in string.gmatch("yangzhi123\n","%c") do--%c：与任何控制字符配对，比如：\n
	print(item);
end

for item in string.gmatch("yangzhi123","%d") do--%d：与任何数字配对
	print(item.."\n");
end

for item in string.gmatch("YangZhi123","%l") do--%d：与任何数字配对
	print(item);
end

for item in string.gmatch("YangZhi*1,2.3","%p") do--%p：与任何标点配对
	print(item);
end

for item in string.gmatch("Yang Zhi*1,2.3","%s") do--%s：与任何空白字符配对
	print(item);
end

for item in string.gmatch("Yang Zhi*1,2.3","%u") do--%u：与任何大写字母配对
	print(item);
end

for item in string.gmatch("Yang Zhi*1,2.3","%w") do--%w：与任何字母/数字配对
	print(item);
end

for item in string.gmatch("Yang Zhi*12b,2.3","%x") do--%x：与任何十六进制数配对
	print(item);
end
	print("\n");
for item in string.gmatch("Y0an0g Zhi*12b,2.3","%z") do--%x：与任何十六进制数配对
	print(item);
end

for item in string.gmatch("Y0an0g Zhi*12b,2.3","%*") do--%X：X：与任何非X（X可以是*，&等，非字母非数字字符）
	print(item);
end
