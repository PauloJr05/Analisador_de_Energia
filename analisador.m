clc
%Magnitude e Fase do Sinal de Tensão e Corrente das três fases ----------------------------------------------------------------------%
magFase

my_plot(Va,Vb,Vc,Ia,Ib,Ic,MagVa,MagVb,MagVc,MagIa,MagIb,MagIc,FaseVa,FaseVb,FaseVc,FaseIa,FaseIb,FaseIc,FreqHarm);

%Calculos --------------------------------------------------------------------------------------------------%


% Angulo de defasagem
phiA = FaseVa(1)-FaseIa(1);
phiB = FaseVb(1)-FaseIb(1);
phiC = FaseVc(1)-FaseIc(1);


cont = length(FreqHarm);

for n=0:(cont-1)
    %Potencia Fase A
    FaseIa(n+1)=(FaseIa(n+1)*pi)/180;
    FaseVa(n+1)=(FaseVa(n+1)*pi)/180;
    phihIa(n+1) = FaseVa(n+1)-FaseIa(n+1);
    Pa((n+1),:)=(MagVa(n+1)*MagIa(n+1)* cos(phihIa(n+1)));
    Qa((n+1),:)=(MagVa(n+1)*MagIa(n+1)*sin(phihIa(n+1)));
    
    
    %Potência Fase B
    FaseIb(n+1)=(FaseIb(n+1)*pi)/180;
    FaseVb(n+1)=(FaseVb(n+1)*pi)/180;
    phihIb(n+1) = FaseVb(n+1)-FaseIb(n+1);
    Pb((n+1),:)=(MagVb(n+1)*MagIb(n+1)* cos(phihIb(n+1)));
    Qb((n+1),:)=(MagVb(n+1)*MagIb(n+1)*sin(phihIb(n+1)));
    
    
    %Potencia Fase C
    FaseIc(n+1)=(FaseIc(n+1)*pi)/180;
    FaseVc(n+1)=(FaseVc(n+1)*pi)/180;
    phihIc(n+1) = FaseVc(n+1)-FaseIc(n+1);
    Pc((n+1),:)=(MagVc(n+1)*MagIc(n+1)* cos(phihIc(n+1)));
    Qc((n+1),:)=(MagVc(n+1)*MagIc(n+1)*sin(phihIc(n+1)));
    
end

% Tensão RMS
Vfa = MagVa(1)
Vfb = MagVb(1)
Vfc = MagVc(1)

%Corrente RMS
Ifa = MagIa(1)
Ifb = MagIb(1)
Ifc = MagIc(1)



%Potencia ativa
%P = ?Vk × Ik × cos(?k)
Pa = sum(Pa) %Potência Ativa Fase A
Pb = sum(Pb) %Potência Ativa Fase B
Pc = sum(Pc) %Potência Ativa Fase C
PTot = Pa+Pb+Pc

%Potencia reativa
%Q = ?Vk × Ik × sin(?k)
Qa = sum(Qa)  %Potência Reativa A
Qb = sum(Qb)  %Potência Reativa B
Qc = sum(Qc)  %Potência Reativa C
Qtot = Qa+Qb+Qc 
%Potencia Aparente 
% S =V × I
Sa = MagVa(1)*MagIa(1)%Potencia Aparente A
Sb = MagVb(1)*MagIb(1)%Potencia Aparente B
Sc = MagVc(1)*MagIc(1)%Potencia Aparente C
STot = Sa+Sb+Sc
% Fator de potência 

FPa = Pa/Sa
FPb = Pb/Sb
FPc = Pc/Sc
FP = PTot/STot

%D = sqrt(S^2 ? P^2 ? Q^2) distortion power
D = sqrt((STot^2)-(PTot^2)-(Qtot^2))

for n=0:(cont-2)
    
    TDH((n+2),:)=(sqrt((MagVa(n+2))^2));
    
end

TDH = (sum(TDH)/MagVa(1))*100
