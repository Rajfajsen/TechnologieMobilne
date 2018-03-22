 %% Czyszczenie
 clc;
 clear;
 clf;
 
 

%% dane 

GT = 1.6; 
GR = GT;    
f = 900*10^6; %MHz
c = 3*10^8;   %m/s
Lampda = c/f;
d1 = 1:0.5:100;
d2 = 100:0.5:10000;

%% Petla do odleglosci 1m-100m

for D = 1:d1
    
MocOdbNad=GT*GR*((Lampda./(4*pi*d1)).^2);

A = log10(MocOdbNad);

subplot(2,2,1);
plot(d1,A)
xlabel('Odleglosc [m]]');
ylabel('Decybele [dB]');
title('Wykres dla 1[m] - 100[m]');
legend('Wykres wzglednego spadku mocy sygnalu radiowego');

end

%% Petla dla odleglosci 100m-10000m

for D = 1:d2
    
MocOdbNad2=GT*GR*((Lampda./(4*pi*d2)).^2);

B = log10(MocOdbNad2);
subplot(2,2,2);
plot(d2,B,'r');
title('Wykres dla 100[m] - 10000[m]');
xlabel('Odleglosc [m]');
ylabel('Decybele [dB]');
legend('Wykres wzglednego spadku mocy sygnalu radiowego');


end


%% Wykres po??czony dla obu d?ugo?ci 1-100, 100-10000

subplot(2,2,[3,4]);
plot(d1,A,d2,B);
title('Wykres dla calej drogi 1[m] - 10000[m]')
xlabel('Odleglosc [m]');
ylabel('Decybele [dB]');
legend('Wykres wzglednego spadku mocy sygnalu radiowego ');
















