clear; close all; clc;

s1 = 1:1:21;

for i = 1:1:length(s1)
    s1(i)=1;
end

s1(11) = NaN;



t =  1:1:21;

figure
plot(t,s1,'b o','LineWidth',2);
title('Gráfico Exemplo')
xlabel('\bfSinal')
ylabel('\bfAmplitude')
legend('Valor resultante da caracteristica','location','northwest'); % Para ver a posição da legenda
axis([0 22 0 2])
xticks(0:1:22)
yticks(0:1:2)
grid on;