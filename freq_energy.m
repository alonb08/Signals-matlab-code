function [Ew] = freq_energy(omega,X,wstart,wstop)
%calculate the energy of the signal w by getting wstart and wstop
Ew1 = time_energy(omega,X,wstart,wstop);%same integral
Ew = Ew1/(2*pi);%const..
end
