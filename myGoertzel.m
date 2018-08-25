function [x,y] = myGoertzel(sinal,freq,Fs)
%sinal  -> Sinal do vetor 
%Freq   ->  Frequencia desejada 
%Fs     -> Frequencia de amostragem 

N = length(sinal);

for faux = freq
    k=round(faux*N/Fs);
    theta = 2*pi*k/N;
    realW = 2*cos(theta);
    WkN = exp(-theta*1i);
    
    %condições iniciais 
    s1 = 0; % y[n-1]
    s2 = 0; % y[n-2]
    n=1;
    
    while(n < N)
        s = sinal(n)+(realW * s1) - s2;
        yk= s - (WkN * s1);
        s2 = s1;
        s1 = s;
        n=n+1;
    end
    
    mag(faux) = 2*abs(yk)/N;
    fase(faux) = angle(yk)*180/pi;
end

x = mag;
y = fase;

end

