clc 
Fs          = 18000;
Fundamental = 60;
FreqHarm   = [Fundamental Fundamental*3 Fundamental*5 Fundamental*7 Fundamental*9 Fundamental*11 Fundamental*13];

%Harmonicas Tensão e Corrente da fase A
[MagVa1, FaseVa1] = myGoertzel(Va,FreqHarm(1),Fs);
[MagIa1, FaseIa1] = myGoertzel(Ia,FreqHarm(1),Fs);

[MagVa3, FaseVa3] = myGoertzel(Va,FreqHarm(2),Fs);
[MagIa3, FaseIa3] = myGoertzel(Ia,FreqHarm(2),Fs);

[MagVa5, FaseVa5] = myGoertzel(Va,FreqHarm(3),Fs);
[MagIa5, FaseIa5] = myGoertzel(Ia,FreqHarm(3),Fs);

[MagVa7, FaseVa7] = myGoertzel(Va,FreqHarm(4),Fs);
[MagIa7, FaseIa7] = myGoertzel(Ia,FreqHarm(4),Fs);

[MagVa9, FaseVa9] = myGoertzel(Va,FreqHarm(5),Fs);
[MagIa9, FaseIa9] = myGoertzel(Ia,FreqHarm(5),Fs);

[MagVa11, FaseVa11] = myGoertzel(Va,FreqHarm(6),Fs);
[MagIa11, FaseIa11] = myGoertzel(Ia,FreqHarm(6),Fs);

[MagVa15, FaseVa15] = myGoertzel(Va,FreqHarm(7),Fs);
[MagIa15, FaseIa15] = myGoertzel(Ia,FreqHarm(7),Fs);

%Magnitude da Fase A
MagVa = [MagVa1(FreqHarm(1)) MagVa3(FreqHarm(2)) MagVa5(FreqHarm(3)) MagVa7(FreqHarm(4)) MagVa9(FreqHarm(5)) MagVa11(FreqHarm(6)) MagVa15(FreqHarm(7))] ;
MagIa = [MagIa1(FreqHarm(1)) MagIa3(FreqHarm(2)) MagIa5(FreqHarm(3)) MagIa7(FreqHarm(4)) MagIa9(FreqHarm(5)) MagIa11(FreqHarm(6)) MagIa15(FreqHarm(7))] ;

%Fases da Fase A
FaseVa =[FaseVa1(FreqHarm(1)) FaseVa3(FreqHarm(2)) FaseVa5(FreqHarm(3)) FaseVa7(FreqHarm(4)) FaseVa9(FreqHarm(5)) FaseVa11(FreqHarm(6)) FaseVa15(FreqHarm(7))] ;
FaseIa =[FaseIa1(FreqHarm(1)) FaseIa3(FreqHarm(2)) FaseIa5(FreqHarm(3)) FaseIa7(FreqHarm(4)) FaseIa9(FreqHarm(5)) FaseIa11(FreqHarm(6)) FaseIa15(FreqHarm(7))] ;

%Harmonicas Tensão e Corrente da fase B
[MagVb1, FaseVb1] = myGoertzel(Vb,FreqHarm(1),Fs);
[MagIb1, FaseIb1] = myGoertzel(Ib,FreqHarm(1),Fs);

[MagVb3, FaseVb3] = myGoertzel(Vb,FreqHarm(2),Fs);
[MagIb3, FaseIb3] = myGoertzel(Ib,FreqHarm(2),Fs);

[MagVb5, FaseVb5] = myGoertzel(Vb,FreqHarm(3),Fs);
[MagIb5, FaseIb5] = myGoertzel(Ib,FreqHarm(3),Fs);

[MagVb7, FaseVb7] = myGoertzel(Vb,FreqHarm(4),Fs);
[MagIb7, FaseIb7] = myGoertzel(Ib,FreqHarm(4),Fs);

[MagVb9, FaseVb9] = myGoertzel(Vb,FreqHarm(5),Fs);
[MagIb9, FaseIb9] = myGoertzel(Ib,FreqHarm(5),Fs);

[MagVb11, FaseVb11] = myGoertzel(Vb,FreqHarm(6),Fs);
[MagIb11, FaseIb11] = myGoertzel(Ib,FreqHarm(6),Fs);

[MagVb15, FaseVb15] = myGoertzel(Vb,FreqHarm(7),Fs);
[MagIb15, FaseIb15] = myGoertzel(Ib,FreqHarm(7),Fs);

%Magnitude da Fase B
MagVb = [MagVb1(FreqHarm(1)) MagVb3(FreqHarm(2)) MagVb5(FreqHarm(3)) MagVb7(FreqHarm(4)) MagVb9(FreqHarm(5)) MagVb11(FreqHarm(6)) MagVb15(FreqHarm(7))] ;
MagIb = [MagIb1(FreqHarm(1)) MagIb3(FreqHarm(2)) MagIb5(FreqHarm(3)) MagIb7(FreqHarm(4)) MagIb9(FreqHarm(5)) MagIb11(FreqHarm(6)) MagIb15(FreqHarm(7))] ;

%Fases da Fase B
FaseVb = [FaseVb1(FreqHarm(1)) FaseVb3(FreqHarm(2)) FaseVb5(FreqHarm(3)) FaseVb7(FreqHarm(4)) FaseVb9(FreqHarm(5)) FaseVb11(FreqHarm(6)) FaseVb15(FreqHarm(7))]; 
FaseIb = [FaseIb1(FreqHarm(1)) FaseIb3(FreqHarm(2)) FaseIb5(FreqHarm(3)) FaseIb7(FreqHarm(4)) FaseIb9(FreqHarm(5)) FaseIb11(FreqHarm(6)) FaseIb15(FreqHarm(7))];


%Harmonicas Tensão e Corrente da fase C
[MagVc1, FaseVc1] = myGoertzel(Vc,FreqHarm(1),Fs);
[MagIc1, FaseIc1] = myGoertzel(Ic,FreqHarm(1),Fs);

[MagVc3, FaseVc3] = myGoertzel(Vc,FreqHarm(2),Fs);
[MagIc3, FaseIc3] = myGoertzel(Ic,FreqHarm(2),Fs);

[MagVc5, FaseVc5] = myGoertzel(Vc,FreqHarm(3),Fs);
[MagIc5, FaseIc5] = myGoertzel(Ic,FreqHarm(3),Fs);

[MagVc7, FaseVc7] = myGoertzel(Vc,FreqHarm(4),Fs);
[MagIc7, FaseIc7] = myGoertzel(Ic,FreqHarm(4),Fs);

[MagVc9, FaseVc9] = myGoertzel(Vc,FreqHarm(5),Fs);
[MagIc9, FaseIc9] = myGoertzel(Ic,FreqHarm(5),Fs);

[MagVc11, FaseVc11] = myGoertzel(Vc,FreqHarm(6),Fs);
[MagIc11, FaseIc11] = myGoertzel(Ic,FreqHarm(6),Fs);

[MagVc15, FaseVc15] = myGoertzel(Vc,FreqHarm(7),Fs);
[MagIc15, FaseIc15] = myGoertzel(Ic,FreqHarm(7),Fs);

%Magnitude da Fase C
MagVc = [MagVc1(FreqHarm(1)) MagVc3(FreqHarm(2)) MagVc5(FreqHarm(3)) MagVc7(FreqHarm(4)) MagVc9(FreqHarm(5)) MagVc11(FreqHarm(6)) MagVc15(FreqHarm(7))] ;
MagIc = [MagIc1(FreqHarm(1)) MagIc3(FreqHarm(2)) MagIc5(FreqHarm(3)) MagIc7(FreqHarm(4)) MagIc9(FreqHarm(5)) MagIc11(FreqHarm(6)) MagIc15(FreqHarm(7))] ;

%Fases da Fase C
FaseVc = [FaseVc1(FreqHarm(1)) FaseVc3(FreqHarm(2)) FaseVc5(FreqHarm(3)) FaseVc7(FreqHarm(4)) FaseVc9(FreqHarm(5)) FaseVc11(FreqHarm(6)) FaseVc15(FreqHarm(7))]; 
FaseIc = [FaseIc1(FreqHarm(1)) FaseIc3(FreqHarm(2)) FaseIc5(FreqHarm(3)) FaseIc7(FreqHarm(4)) FaseIc9(FreqHarm(5)) FaseIc11(FreqHarm(6)) FaseIc15(FreqHarm(7))];