function my_plot(Va,Vb,Vc,Ia,Ib,Ic,MagVa,MagVb,MagVc,MagIa,MagIb,MagIc,FaseVa,FaseVb,FaseVc,FaseIa,FaseIb,FaseIc,FundGoert)
%MY_PLOT Summary of this function goes here
%   Detailed explanation goes here

figure
%Sinal da tensão e corrente
subplot(2,1,1); plot(Va)
ylabel('Amplitude (V)');
title('Sinal de Tensão Trifásico');
hold on
subplot(2,1,1); plot(Vb)
subplot(2,1,1); plot(Vc)

%Sinal da tensão e corrente
subplot(2,1,2); plot(Ia)
ylabel('Amplitude (A)');
title('Sinal de Corrente Trifásico');
hold on
subplot(2,1,2); plot(Ib)
subplot(2,1,2); plot(Ic)

figure
subplot(2,1,1); stem(FundGoert,MagVa);
xlabel('Frequência (Hz)');
ylabel('Amplitude (V)');
title('Goertzel das harmônicas ímpares da tensão (fase A)');

subplot(2,1,2); stem(FundGoert,MagIa);
xlabel('Frequência (Hz)');
ylabel('Amplitude (A)');
title('Goertzel das harmônicas ímpares da corrente (fase A)');
end

