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
print("�ҵĴ�ӡ" , param);
end

myFounction();

function add(n1,n2,functionPrint)
result = n1 + n2;
functionPrint(result);
end
add(520,1314,myFounction);

s,b = string.find("abcd","ab");
print(s,b);
--  ȡ���ֵ
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
	print("�ܹ�����" .. #arg.. "����");
	return result/#arg;
end
print("ƽ��ֵΪ" , average(10,12));

function fwrite(fmt,...) --->�̶��Ĳ���fmt+�ɱ����...;�̶�����������ڿɱ����֮ǰ
	return io.write(string.format(fmt,...));
end

fwrite("yangzhi\n");    --->fmt = "��־"��û�б䳤����
fwrite("%d%d\n",1,2);   --->fmt = "%d%d"���ɱ����Ϊ1��2

--ͨ���ڱ����䳤������ʱ��ֻ��Ҫʹ��{...}��Ȼ���߳��������ܻ����һЩnil����ô�Ϳ�����select���������ʱ䳤�����ˣ�select('#',...)����select(n,...)
--select('#',...)���ؿɱ�����ĳ���
--select(n,...)���ڷ���n��select('#'...)�Ĳ���
--����selectʱ�����봫��һ���̶�ʵ��selector(ѡ�񿪹�)��һϵ�б䳤���������selectorΪ����n����ôselect�������ĵ�n���ɱ�ʵ�Σ�����ֻ��Ϊ�ַ�����#",����select�᷵�ر䳤����������
--�����ܽ᣺ʹ��select,һ������ҪôΪ��#��(��ȡ�ɱ�����ĳ���)��ҪôΪn����ȡ�ɱ�����еĵڼ��������� ���ڶ�������Ϊ�ɱ������...��
do
	function foo(...)
		for i = 1,select('#',...) do
			local arg = select(i,...);
			print("arg",arg);
		end
	end

	foo(1,2,3,4);
end
--�������������+����-����*����/,ȡ��%,����^,���ţ�����һ���ģ�-
--��ϵ����������ڣ�==�������ڣ�~=�����ڣ�>;С�ڣ�<;���ڵ��ڣ�>=;С�ڵ��ڣ�
a,b = 1,2
if(a ~= b) then
print("a������b");
end
--�߼���������߼��룺and;�߼���or;�߼��ǣ�not
if(a and b) then
print("a,b����Ϊtrue");end
--��������������������ַ�����..;#һԪ������������ַ������ĳ��ȡ�
a,b = "Shi","BiBi";
print("�����ַ���a��b",a..b);
print("b�ַ����ĳ���",#b);
--�������ȼ�
--1��^
--2:not -(unary)
--3:* /
--4:+ -
--5:..
--6:< > <= >= ~= ==
--7:and
--8:or

--[[�ַ���������]]
--1."a"
--2.'b'
--3.[[c]]
str1 = "Lua"
print("\"�ַ���str1=\"",str1);
str2 = 'YangZhi';
print('�ַ���2=',str2);
str3 = [[YZ]];
print([[�ַ���3=]],str3);
--ת���ַ�
print("\a");--����
print("a1\b");--�˸�
print("a2\f");--��ҳ
print("a3\n");--����
print("a4\r");--�س�
print("a5\t");--ˮƽ�Ʊ�
print("a6\v");--��ֱ�Ʊ�
print("a7\\");--����һ����б�ַ�"\'
print("a8\'");--����һ���������ַ�
print("a9\"");--����һ��˫�����ַ�
print("a10\0");--���ַ�null
print("\ddd");--1��3λ�˽�����������������ַ�
print("\xhh");--1��2λʮ������������������ַ�
--�ַ�������
print(string.upper("yz"));--���ַ���ȫ��תΪ��д��ĸ
print(string.lower("YZ"));--���ַ���ȫ��תΪСд��ĸ
print(string.gsub("YangZhi","g","6",1));--string.gsub(main,find,replace,num);�ַ����滻��main����Ҫ�滻���ַ�����find�����滻���ַ���replace:�滻���ַ���num:�����ȫ���滻�����ˣ��滻����
print(string.find("YangZhi","a",1));--string.find(str,substr,index);��һ��ָ����Ŀ���ַ���������ָ�������ݣ�����������Ϊ��ʼ������������������ָ���������ݵľ���λ�á��������򷵻�nil
print(string.reverse("YangZhi"));--�ַ�����ת�����ǵ�����
print(string.format("i love %d",0));--��ʽ���ַ���
print(string.char(97,98,99,10));--string.char()����������ת���ַ�������
print(string.byte("YangZhi",7));--string.byte(arg,index);���ַ���ת��Ϊ����ֵ��arg��Ҫת�����ַ�����index��ָ���Ǹ�λ�õ��ַ���Ĭ�ϵ�һ���ַ�
print(string.len("yangzhi"));--�����ַ����ĳ���
print(string.rep("yangzhi",2));--string.rep(arg,count);�����ַ�����n��������arg:Ҫ�������ַ�����count:�������ٴ�
print("I Lo" .. "VE U");--���������ַ���
for word in string.gmatch("Yang Zhi","%a") do--����һ��������������ÿһ�ε����������������һ�����ַ���str�ҵ�����һ������pattern�������Ӵ����������pattern�������ַ���û���ҵ���������������nil
	print(word);
end
print(string.match("i 520 love u","%d+ %a+"));--string.match(str,pattern,init);ֻѰ��Դ�ַ���str�еĵ�һ����ԡ�����ini��ѡ��ָ����Ѱ���̵���㣬Ĭ��Ϊ1
--��ʽ�ַ������ܰ�����ת����
print(string.format("yz %c",12));--%c������һ�����֣�������ת��ΪASCLL����ж�Ӧ���ַ�
print(string.format("yz %d %i",12,21));--%d %i������һ�����ֲ�����ת��Ϊ�з��ŵ�������ʽ
print(string.format("yz %o",1));--%o������һ�����ֲ�����ת��Ϊ�˽�������ʽ
print(string.format("yz %u","1"));--%u������һ�����ֲ�����ת��Ϊ�޷��ŵ�������ʽ��
print(string.format("yz %x",123));--%x������һ�����ֲ�����ת��Ϊʮ����������ʽ����ӦСд��ĸ
print(string.format("yz %X",123));--%X������һ�����ֲ�����ת��Ϊʮ����������ʽ����Ӧ��д��ĸ
print(string.format("yz %e",123));--%e������һ�����ֲ�����ת��Ϊ��ѧ��������ʽ��ʹ��Сд��ĸe
print(string.format("yz %E",123));--%E������һ�����ֲ�����ת��Ϊ��ѧ��������ʽ��ʹ�ô�д��ĸend
print(string.format("yz %f",123));--%f������һ�����ֲ�����ת��Ϊ��������ʽ
print(string.format("yz %g",123));--%g������һ�����ֲ�����ת��Ϊ%e��%f�н϶̵�һ�ָ�ʽ
print(string.format("yz %G",123));--%G������һ�����ֲ�����ת��Ϊ%E��%F�н϶̵�һ�ָ�ʽ
print(string.format("yz %q",123));--%q������һ�����ֲ�����ת��Ϊ�ɰ�ȫ��Lua����������ĸ�ʽ
print(string.format("yz %s","c"));--%s������һ���ַ��������ո����Ĳ�����ʽ�����ַ���
for i = 0,10000000 do
	print(i);
	if(i > 0) then break end
end
--ϸ����ʽ
print(string.format("yz %+s","abc"));--���ţ�һ��+�ű�ʾ��������ת�������������ʾ���ţ�Ĭ�������ֻ�и�����ʾ����
print(string.format("yz"));--ռλ����һ��0���ں���ָ�����ַ������ʱռλ�á�����ʱ��Ĭ��ռλ��ʱ�ո� û����
print(string.format("yz"));--�����ʶ������ָ�����ַ������ʱ��Ĭ��Ϊ�Ҷ��룬����-�ſ��Ըı�Ϊ����� û����
--ƥ��ģʽ
for item in string.gmatch("abcd123",".") do--.�����κ��ַ����
	print(item);
end

for item in string.gmatch("yangzhi123","%a") do--%a�����κ���ĸ���
	print(item);
end

for item in string.gmatch("yangzhi123\n","%c") do--%c�����κο����ַ���ԣ����磺\n
	print(item);
end

for item in string.gmatch("yangzhi123","%d") do--%d�����κ��������
	print(item.."\n");
end

for item in string.gmatch("YangZhi123","%l") do--%d�����κ��������
	print(item);
end

for item in string.gmatch("YangZhi*1,2.3","%p") do--%p�����κα�����
	print(item);
end

for item in string.gmatch("Yang Zhi*1,2.3","%s") do--%s�����κοհ��ַ����
	print(item);
end

for item in string.gmatch("Yang Zhi*1,2.3","%u") do--%u�����κδ�д��ĸ���
	print(item);
end

for item in string.gmatch("Yang Zhi*1,2.3","%w") do--%w�����κ���ĸ/�������
	print(item);
end

for item in string.gmatch("Yang Zhi*12b,2.3","%x") do--%x�����κ�ʮ�����������
	print(item);
end
	print("\n");
for item in string.gmatch("Y0an0g Zhi*12b,2.3","%z") do--%x�����κ�ʮ�����������
	print(item);
end

for item in string.gmatch("Y0an0g Zhi*12b,2.3","%*") do--%X��X�����κη�X��X������*��&�ȣ�����ĸ�������ַ���
	print(item);
end
