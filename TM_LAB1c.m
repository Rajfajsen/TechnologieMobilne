 % Zadanie 3

 %% Czyszczenie
 clc;
 clear;
 clf;
 
 
%% Dane
GT = 1.6;
GR = GT;
f = 900*10^6; %MHz
h1 = 30; %m
h2 = 3; %m
c = 3*10^8;   %m/s
d1 = 1:0.01:100; %m (wektor)
d2 = 100:1:10000; %m (wektor)


%% Wzor na lambde i lambda

lambda = c/f;


 %% Wyliczenie odleglosci
    
D1=sqrt((h1-h2)^2+d1.^2);
D2=sqrt((h1+h2)^2+d1.^2);

%% Wyznaczenie fi1 i fi2

fi1 = -2*pi*f*(D1/c);  
fi2 = -2*pi*f*(D2/c);   


%% Petle Dla 1[m]-100[m]

for D = 1:d1

  

   % Transmisja Wielodrogowa
    
    Wielotorowe1=GT*GR*((lambda./(4*pi)).^2).*(abs((1./D1.*exp(1i*fi1))-(1./D2.*exp(1i*fi2)))).^2;

    A = 10*log10(Wielotorowe1);
    
    %figure(1);
    subplot(2,2,1);
    plot(d1,A);
    xlabel('Odleglosc [m]');
    ylabel('Spadek mocy w decybelach[dB]');
    title('Wzgledny spadek mocy sygnalu radiowego dla drogi 1m-100m');

end


%% Wyliczenie odleglosci  
D11=sqrt((h1-h2)^2+d2.^2);
D22=sqrt((h1+h2)^2+d2.^2);

%% Wyznaczenie fi1 i fi2

fi11 = -2*pi*f*(D11/c);  
fi22 = -2*pi*f*(D22/c);   



%% Petle dla 100[m] - 10000[m]


for D = 1:d2

    

    % Transmisja Wielodrogowa
    
    Wielotorowe2=GT*GR*((lambda./(4*pi)).^2).*(abs((1./D11.*exp(1i*fi11))-(1./D22.*exp(1i*fi22)))).^2;

    B = 10*log10(Wielotorowe2);
    
    %figure(2);
    subplot(2,2,2);
    plot(d2,B);
    xlabel('Odleglosc [m]');
    ylabel('Spadek mocy w decybelach[dB]');
    title('Wzgledny spadek mocy sygnalu radiowego dla drogi 100m-10000m');


end

%% Polaczenie dwoch wykresow w jedna, cala droge

%figure(3)
subplot(2,2,[3,4]);
plot(d1,A,d2,B);
xlabel('Odleglosc [m]');
ylabel('Spadek mocy w decybelach[dB]');
title('Wzgledny spadek mocy sygnalu radiowego dla calej drogi 1[m] - 10000[m]');

