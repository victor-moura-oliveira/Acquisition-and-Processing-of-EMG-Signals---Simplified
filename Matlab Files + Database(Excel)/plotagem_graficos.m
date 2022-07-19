% LOG

clc;clear all; close all;
a = xlsread('Analise final das amostras.xlsx');
t = 1:1:length(a);

for z=1:1:length(a)
    if(z<=length(a))
    t1(z) = a(z,1);
    end
end
% for z=1:1:length(a)
%     if(z<=length(a))
%     t2(z) = a(z,3);
%     end
% end
t = 1:1:length(a);
x1 = t1;y1 = t1;
% x2 = t2;y2 = t2;

plot (t,y1,'b o','LineWidth',2);
title('Característica: LOG')
xlabel('\bfSinal')
ylabel('\bfLog Detector (Sinal)')
legend('Valor resultante da característica','location','northwest'); % Para ver a posição da legenda
% xticks(0:1:22)
% yticks(0:1:20)
xticks(0:1:22)%Colocar todos pontos no eixo marcando de 1 em 1.
xlim([0 22])
grid on;

%%  MAV

clc;clear all; close all;
a = xlsread('Analise final das amostras.xlsx');
aux = 0;

for z=1:1:21
    if(z<=21)
    t1(z) = a(z,2);
    end
end
% for z=25:1:47
%     aux = 1 + aux;
%     if(z<=47)
%     t2(aux) = a(z,2);
%     end
% end


t = 1:1:21;
y1 = t1;
% y2 = t2;% 
plot (t,y1,'b o','LineWidth',2);
title('Característica: MAV')
xlabel('\bfSinal')
ylabel('\bfMean Absolute Value (Sinal)')
legend('Valor resultante da característica','location','northwest'); % Para ver a posição da legenda
xticks(0:1:22)
xlim([0 22])
grid on;

%%  RMS

clc;clear all; close all;
a = xlsread('Analise final das amostras.xlsx');
aux = 0;

for z=1:1:length(a)
    if(z<=length(a))
    t1(z) = a(z,3);
    end
end
% for z=25:1:47
%     aux = 1 + aux;
%     if(z<=47)
%     t2(aux) = a(z,3);
%     end
% end


t = 1:1:length(a);
y1 = t1;
% y2 = t2;% 
plot (t,y1,'b o','LineWidth',2);
title('Característica: RMS')
xlabel('\bfSinal')
ylabel('\bfRoot Mean Square (Sinal)')
legend('Valor resultante da característica','location','northwest'); % Para ver a posição da legenda
xticks(0:1:22)
xlim([0 22])
grid on;

%%  SSI

clc;clear all; close all;
a = xlsread('Analise final das amostras.xlsx');
aux = 0;

for z=1:1:length(a)
    if(z<=length(a))
    t1(z) = a(z,4);
    end
end
% for z=25:1:47
%     aux = 1 + aux;
%     if(z<=47)
%     t2(aux) = a(z,4);
%     end
% end


t = 1:1:length(a);
y1 = t1;
% y2 = t2;% 
plot (t,y1,'b o','LineWidth',2);
title('Característica: SSI')
xlabel('\bfSinal')
ylabel('\bfSimple Square Integral (Sinal)')
legend('Valor resultante da característica','location','northwest'); % Para ver a posição da legenda
xticks(0:1:22)
xlim([0 22])
grid on;

%%  TM1

clc;clear all; close all;
a = xlsread('Analise final das amostras.xlsx');
aux = 0;

for z=1:1:length(a)
    if(z<=length(a))
    t1(z) = a(z,5);
    end
end
% for z=25:1:47
%     aux = 1 + aux;
%     if(z<=47)
%     t2(aux) = a(z,5);
%     end
% end


t = 1:1:length(a);
y1 = t1;
% y2 = t2;% 
plot (t,y1,'b o','LineWidth',2);
title('Característica: TM1')
xlabel('\bfSinal')
ylabel('\bfTemporal Moment 1 (Sinal)')
legend('Valor resultante da característica','location','northwest'); % Para ver a posição da legenda
xticks(0:1:22)
xlim([0 22])
grid on;

%%  TM2

clc;clear all; close all;
a = xlsread('Analise final das amostras.xlsx');
aux = 0;

for z=1:1:length(a)
    if(z<=length(a))
    t1(z) = a(z,6);
    end
end
% for z=25:1:47
%     aux = 1 + aux;
%     if(z<=47)
%     t2(aux) = a(z,6);
%     end
% end


t = 1:1:length(a);
y1 = t1;
% y2 = t2;% 
plot (t,y1,'b o','LineWidth',2);
title('Característica: TM2')
xlabel('\bfSinal')
ylabel('\bfTemporal Moment 2 (Sinal)')
legend('Valor resultante da característica','location','northwest'); % Para ver a posição da legenda
xticks(0:1:22)
xlim([0 22])
grid on;

%%  TM3

clc;clear all; close all;
a = xlsread('Analise final das amostras.xlsx');
aux = 0;

for z=1:1:length(a)
    if(z<=length(a))
    t1(z) = a(z,7);
    end
end
% for z=25:1:47
%     aux = 1 + aux;
%     if(z<=47)
%     t2(aux) = a(z,7);
%     end
% end


t = 1:1:length(a);
y1 = t1;
% y2 = t2;% 
plot (t,y1,'b o','LineWidth',2);
title('Característica: TM3')
xlabel('\bfSinal')
ylabel('\bfTemporal Moment 3 (Sinal)')
legend('Valor resultante da característica','location','northwest'); % Para ver a posição da legenda
xticks(0:1:22)
xlim([0 22])
grid on;

%%  TM4

clc;clear all; close all;
a = xlsread('Analise final das amostras.xlsx');
aux = 0;

for z=1:1:length(a)
    if(z<=length(a))
    t1(z) = a(z,8);
    end
end
% for z=25:1:47
%     aux = 1 + aux;
%     if(z<=47)
%     t2(aux) = a(z,8);
%     end
% end


t = 1:1:length(a);
y1 = t1;
% y2 = t2;% 
plot (t,y1,'b o','LineWidth',2);
title('Característica: TM4')
xlabel('\bfSinal')
ylabel('\bfTemporal Moment 4 (Sinal)')
legend('Valor resultante da característica','location','northwest'); % Para ver a posição da legenda
xticks(0:1:22)
xlim([0 22])
grid on;

%%  TM5

clc;clear all; close all;
a = xlsread('Analise final das amostras.xlsx');
aux = 0;

for z=1:1:length(a)
    if(z<=length(a))
    t1(z) = a(z,9);
    end
end
% for z=25:1:47
%     aux = 1 + aux;
%     if(z<=47)
%     t2(aux) = a(z,9);
%     end
% end


t = 1:1:length(a);
y1 = t1;
% y2 = t2;% 
plot (t,y1,'b o','LineWidth',2);
title('Característica: TM5')
xlabel('\bfSinal')
ylabel('\bfTemporal Moment 5 (Sinal)')
legend('Valor resultante da característica','location','northwest'); % Para ver a posição da legenda
xticks(0:1:22)
xlim([0 22])
grid on;

%%  VAR

clc;clear all; close all;
a = xlsread('Analise final das amostras.xlsx');
aux = 0;

for z=1:1:length(a)
    if(z<=length(a))
    t1(z) = a(z,10);
    end
end
% for z=25:1:47
%     aux = 1 + aux;
%     if(z<=47)
%     t2(aux) = a(z,10);
%     end
% end


t = 1:1:length(a);
y1 = t1;
% y2 = t2;% 
plot (t,y1,'b o','LineWidth',2);
title('Característica: VAR')
xlabel('\bfSinal')
ylabel('\bfVariance of EMG (Sinal)')
legend('Valor resultante da característica','location','northwest'); % Para ver a posição da legenda
xticks(0:1:22)
xlim([0 22])
grid on;

%%  WAMP

clc;clear all; close all;
a = xlsread('Analise final das amostras.xlsx');
aux = 0;

for z=1:1:length(a)
    if(z<=length(a))
    t1(z) = a(z,11);
    end
end
% for z=25:1:47
%     aux = 1 + aux;
%     if(z<=47)
%     t2(aux) = a(z,11);
%     end
% end


t = 1:1:length(a);
y1 = t1;
% y2 = t2;% 
plot (t,y1,'b o','LineWidth',2);
title('Característica: WAMP')
xlabel('\bfSinal')
ylabel('\bfWillison Amplitude (Sinal)')
legend('Valor resultante da característica','location','northwest'); % Para ver a posição da legenda
xticks(0:1:22)
xlim([0 22])
grid on;

%%  FR

clc;clear all; close all;
a = xlsread('Analise final das amostras.xlsx');
aux = 0;

for z=1:1:length(a)
    if(z<=23)
    t1(z) = a(z,12);
    end
end
% for z=25:1:47
%     aux = 1 + aux;
%     if(z<=47)
%     t2(aux) = a(z,12);
%     end
% end


t = 1:1:length(a);
y1 = t1;
% y2 = t2;% 
plot (t,y1,'b o','LineWidth',2);
title('Característica: FR')
xlabel('\bfSinal')
ylabel('\bfFrequency Ratio (Sinal)')
legend('Valor resultante da característica','location','northwest'); % Para ver a posição da legenda
xticks(0:1:22)
xlim([0 22])
grid on;