clear;clc;close all;
NP  = 50;
q = 0.2;
rec = zeros(1,NP);
for i = 1:NP
rec(i) = (1-q)^(NP-i)*q/(1-(1-q)^NP);
end
figure;
recIndex = 1:NP;
plot(recIndex,rec);
PPx = zeros(1,NP);
PPx(1) = rec(1);
for i=2:NP                        %�������̶Ĳ��Եĸ����ۼ�
    PPx(i) = PPx(i-1) + rec(i);
end
figure;
plot(recIndex,PPx);

sita = rand()
for n=1:NP
    if sita <= PPx(n)
        SelFather = n;           %�������̶Ĳ���ȷ���ĸ���
        break;
    end
end
SelFather