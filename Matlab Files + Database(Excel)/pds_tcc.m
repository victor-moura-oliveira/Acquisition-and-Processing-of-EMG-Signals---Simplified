clc; clear all; close all;

% -------------- %%%% EXPORTAÇÃO DOS DADOS DO EXCEL %%%% ----------------

A = xlsread('AMOSTRAS VICTOR.xlsx');
%[dados, texto, resto] = xlsread('Dados_matlab.xlsx');
N = length(A);
tempo = zeros(1,length(A));
sinal = zeros(1,length(A));


for z = 1:1:N
    
    if(z<=N)
        
tempo(z) = A(z,1);
sinal(z) = A(z,3); %Comecei em 3
z = z + 1;

    end
    
end
figure
plot (tempo,(4.9E-3)*sinal,'Linewidth', 1.1);
title('\bfSinal EMG - Domínio do Tempo - Bíceps (Contração)');
xlabel('\bfTempo(ms)');
ylabel('\bfAmplitude(volt)');
xlim([0 650])
ylim([0 6])
grid on;



my_fft(sinal,2000);


% Transformada de fourier
x = sinal;
Fs = 2000;

N = length(x);                      % variável N recebe o tamanho do vetor x
k = 0:N-1;                          % k é um vetor que vai de zero até N menos 1
T = N/Fs;                           % Vetor de tempo N dividido pela frequência de amostragem
freq = k/T;
X = fftn(x)/N;                      % X recebe a FFT normalizada do vetor x sobre N
cutOff = ceil(N/2);                 % cutOff ajusta o eixo X
X = X(1:cutOff);
figure();
subplot(2,1,1)
plot(freq(1:cutOff),abs(X), 'Linewidth', 1.5);        % Plota a transformada de Fourier e o valor de X em módulo
title('\bfSinal EMG - Domínio da Frequência - Bíceps (Relaxado)');
xlabel('\bfFrequency (Hz)'); 
ylabel('\bfAmplitude (volt)');
grid on;

dB = mag2db(abs(X));

subplot(2,1,2)
plot(freq(1:cutOff)/pi,dB, 'Linewidth', 1.5)
title('\bfSinal EMG - Domínio da Frequência (dB) - Bíceps (Relaxado)');
xlabel('\bfAngular frequency (\omega) / \pi')
ylabel('\bfMagnitude (dB)')
xlim([0 325])
grid on;

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
close all; clc;

%    -------------  %%%% FILTRAGEM %%%% ---------------

lpFilt = designfilt('lowpassiir','FilterOrder',8, ...
         'PassbandFrequency',480,'PassbandRipple',0.2, ...
         'SampleRate',2000);
% fvtool(lpFilt);

sinal_lp = filtfilt(lpFilt,sinal);
% figure;
% subplot(2,1,1);
% plot(sinal_lp);
% subplot(2,1,2);
% plot(sinal);


% PASSA ALTA
hpFilt = designfilt('highpassiir','FilterOrder',8, ...
         'PassbandFrequency',10,'PassbandRipple',0.2, ...
         'SampleRate',2000);
%  fvtool(hpFilt);

 sinal_lp_hp = filtfilt(lpFilt,sinal_lp);
 
%  figure;
% subplot(3,1,1);
% plot(sinal_lp_hp);
% 
% subplot(3,1,2);
% plot(sinal_lp);
%  
% subplot(3,1,3);
% plot(sinal);    


%REJEITA FAIXA
bsFilt = designfilt('bandstopiir','FilterOrder',20, ...
         'HalfPowerFrequency1',59,'HalfPowerFrequency2',61, ...
         'SampleRate',2000);
% fvtool(bsFilt)

sinal_lp_hp_bs = filtfilt(bsFilt,sinal_lp_hp);

figure;
subplot(2,1,1);
plot(sinal);
title('\bfSinal ');
xlabel('\bftime(ms)');
ylabel('\bfAmplitude(V)');

subplot(2,1,2);
plot(sinal_lp_hp_bs);
title('\bfFiltered lp+hp+bs')
xlabel('\bftime(ms)');

% my_fft(sinal_lp_hp_bs,2000);

x = sinal_lp_hp_bs;
Fs = 2000;

N = length(x);                      % variável N recebe o tamanho do vetor x
k = 0:N-1;                          % k é um vetor que vai de zero até N menos 1
T = N/Fs;                           % Vetor de tempo N dividido pela frequência de amostragem
freq = k/T;
X = fftn(x)/N;                      % X recebe a FFT normalizada do vetor x sobre N
cutOff = ceil(N/2);                 % cutOff ajusta o eixo X
X = X(1:cutOff);

figure();
subplot(2,1,1)
plot(freq(1:cutOff),abs(X), 'Linewidth', 1.5);        % Plota a transformada de Fourier e o valor de X em módulo
title('\bfSinal EMG Filtrado - Domínio da Frequência - Bíceps (Contração)');
xlabel('\bfFrequency (Hz)');
ylabel('\bfAmplitude (volt)');
grid on;

subplot(2,1,2)
plot(freq(1:cutOff)/pi,dB, 'Linewidth', 1.5)
title('\bfSinal EMG Filtrado - Domínio da Frequência (dB) - Bíceps (Contração)');
xlabel('\bfAngular frequency (\omega) / \pi')
ylabel('\bfMagnitude (dB)')
xlim([0 325])
grid on;

figure();
plot (tempo,(4.9E-3)*sinal, 'b','Linewidth', 1.5);
title('\bfSinal EMG - Domínio do Tempo');
xlabel('\bfTempo(ms)');
ylabel('\bfAmplitude(volt)');
grid on;
hold on


plot(tempo, (4.9E-3)*sinal_lp_hp_bs, 'r','Linewidth', 1.5);
title('\bfSinal EMG Filtrado - Bíceps (Relaxado) - Domínio do Tempo');
xlabel('\bfTempo(ms)');
ylabel('\bfAmplitude(volt)');
grid on;
ylim([0 3])
xlim([0 650])
legend('Sinal EMG Original','Sinal EMG Filtrado')



%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc; close all;

%  ------------ %%%% APLICAÇÃO DAS CARACTERISTICAS %%%% -----------------

%   %%%%% DOMINÍO DO TEMPO %%%%%


%_____________________________________________________

%LOG (Log Detector)
s = sinal_lp_hp_bs;
s_f = 0;
for z = 1:1:length(s)
    if(z<=length(s))
        
        s_f = s_f + log10(abs(s(z)));
        
    end
end
LOG = exp(s_f/length(s));
%________________________________________________________

%MAV ( Mean Absolute Value)
s_f = 0;
for z = 1:1:length(s)
    if(z<= length(s))
        
        s_f = s_f + abs(s(z));
        
    end
end
MAV = s_f/(length(s));
%____________________________________________________________

%RMS (Root mean square)
s_f = 0;
for z = 1:1:length(s)
    if(z<length(s))
        
       s_f = s_f + (s(z))^2;
       
    end
end

RMS = sqrt(s_f/(length(s)));
%____________________________________________________________

%SSI (Simple Square Integral)
s_f = 0;
for z = 1:1:length(s)
    if(z<=length(s))
        
       s_f = s_f + (s(z))^2;
       
    end
end
SSI = s_f;
%__________________________________________________________

% TM (Temporal Moment)
s_f = 0;
s_f1 = 0; s_f2 = 0; s_f3 = 0; s_f4 = 0; s_f5 = 0;
for z = 1:1:length(s)
    if(z<=length(s))
       
        %TM1
        s_f1 = s_f1 + abs(s(z));
        
        %TM2
        s_f2 = s_f2 + (s(z)^2);
        
        %TM3
        s_f3 = s_f3 + abs((s(z))^3);
        
        %TM4
        s_f4 = s_f4 + (s(z))^4;

        %TM5
        s_f5 = s_f5 + abs((s(z))^5);

    end
end

TM1 = s_f1/length(s);
TM2 = s_f2/(length(s)-1);
TM3 = s_f3/length(s);
TM4 = s_f4/length(s);
TM5 = s_f5/length(s);
clear('s_f1','s_f2','s_f3','s_f3','s_f4','s_f5');
%_________________________________________________________

%VAR (Variance of EMG)
s_f = 0;
for z =1:1:length(s)
    if(z<=length(s))
        s_f = s_f + (s(z)^2);
    end
end
VAR = s_f/(length(s) -1 );
%____________________________________________________________

%WAMP (Willison Aplitude)
s_f = 0;
for z = 1:1:(length(s) -1 )
    if(z <= (length(s) - 1))
        
        s_f = s_f + abs(s(z) - s(z+1));
    end
end
WAMP = s_f;
clear ('s_f','z');        
% -------------------------------------------------------------------

  %%%%% DOMINÍO DA FREQUENCIA  %%%%%

s_fft = X;
f = freq(1:cutOff);


%Calculo de  ULC
aux = 0;
z = 0;
valor_final = 0;
for z=1:1:length(f)
    if(aux <= 20)
        aux = f(z);
        valor_final = z;
    end
end
ULC = valor_final;
clear('aux','z','valor_final');

%Calculo de LLC
aux = 0;
z = 0;
valor_final = 0;
for z=1:1:length(f)
    if(aux<=220)
        aux = f(z);
        valor_final = z;
    end
end
LLC = valor_final;
clear('aux','z','valor_final');

%Calculo de LHC
LHC = LLC+1; %LLC É O LIMITE INFERIOR, ASSIM O LIMITE SUPEIOR É A PROXIMA AMOSTRA.

%Calculo de UHC
z = 0;
aux = 0;
valor_final = 0;
for z = 1:1:length(f)
    if(aux<=450)
        aux = f(z);
        valor_final = z;
    end
end
UHC = valor_final;
clear('aux','z','valor_final');


%APOS ENCONTRAR OS LIMITES DE FREQUÊNCIA QUE DESEJAMOS, APLICAMOS NA
%EQUAÇÃO PRINCIPAL DE Frequency Ratio (FR).

%NUMERADOR DA EQUAÇÃO

pjn=0;
z = 0;
for z = LLC:-1:ULC
    if(z>=ULC)
        pjn = pjn + (abs(s_fft(z)))^2;
        
    end 
end

%DENOMINADOR

pjd = 0;
for z = LHC:1:UHC
    if(z<=UHC)
        pjd = pjd + (abs(s_fft(z)))^2;
    end
end
clear ('z');

%VALOR DE FR 

FR = pjn/pjd;

%% ORGANIZAÇÃO DOS DADOS
clc;
caracteristicas_EMG = [LOG MAV RMS SSI TM1 TM2 TM3 TM4 TM5 VAR WAMP FR];
xlswrite('signal_data',caracteristicas_EMG,'caracteristicas','A10')



