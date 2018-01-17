function y=newzero(f,x0)
%这是一个通用的Newton迭代程序
%输入f是一个函数句柄，如@sin等,x0是初值
syms x;                              %定义符号变量x
tem=f(x);                            %定义一个符号型的输入函数
fp=diff(tem);                        %对该符号型的函数求导
while abs(f(x0))>1e-8
   y=x0-f(x0)/eval(subs(fp,x0));     %这里subs将x0的值传给fp，eval将syms转为数值型
   x0=y;
end
end
