function y=newzero(f,x0)
%����һ��ͨ�õ�Newton��������
%����f��һ�������������@sin��,x0�ǳ�ֵ
syms x;                              %������ű���x
tem=f(x);                            %����һ�������͵����뺯��
fp=diff(tem);                        %�Ը÷����͵ĺ�����
while abs(f(x0))>1e-8
   y=x0-f(x0)/eval(subs(fp,x0));     %����subs��x0��ֵ����fp��eval��symsתΪ��ֵ��
   x0=y;
end
end
