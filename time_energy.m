function [Et] = time_energy(t,x,tstart,tstop)
%calculate the energy of the signal t by getting T_start and T_stop
dt = 0.02;
C=find(t>tstart & t<tstop);%create vector of relevant time to calculate energy

%return the start of the signal,the end if the signal is length(C)
indxTstart= min(C);

Et = 0; %start condition
for i=1:length(C)
    Et=Et+dt*(abs(x(i+indxTstart)))^2;
end
end
