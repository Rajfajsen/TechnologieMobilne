%% Zadanie 2 wykres ze wzoru na predkosc w ruchu jednostanym

clear;
clc;
clf;


s = 1:0.01:100;
ss = 100:1:10000
c = 300000

for D = 1 : s

V = c; %300 000 [m/s]

T = s./V; %czas w [s] = [m]/[m/s]

subplot(2,2,1);
plot(s,T,'r');
title('Wykres opoznienia sygnalu');
xlabel('Odleglosc [m]');
ylabel('Czas [s]');
end

%% 100-10000

for DD = 1 : ss
    
    V = c;
    
    T = s./V;
    
    subplot(2,2,2);
    plot(ss,T,'b');
    title('Wykres opoznienia sygnalu 100[m]-10000[m]');
    xlabel('Odleglosc [m]');
    ylabel('Czas [s]');
    
end


subplot(2,2,[3,4]);
plot(s,T,ss,T);
title('Wykres opoznienia sygnalu dla calosci');
xlabel('Odleglosc [m]');
ylabel('Czas [s]');



