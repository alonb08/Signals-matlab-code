function [ak,omega0,K] = CFS(t,x,tstart,tstop,omega)
%calculate the ak - foruier series coeff
%dt by definition is 0.02
dt=0.02;
T0 = tstop-tstart; %length of one periode
omega0=2*pi/T0;
Num_of_coeff = round(omega/omega0);
K =(-1*Num_of_coeff):Num_of_coeff;%number of coeff that we calculate
sigma_until_T=round(T0/dt);
ak(1:2*Num_of_coeff+1)= 0;
first_not_zero = find(x,1,'first');
for i=1:(2*Num_of_coeff+1)%run ak times
    sigm=0;%reset sigm for each run of the loop- each coeff
    for n=1:(sigma_until_T)
        %calculate the integral
        sigm=sigm+x(first_not_zero+n)*dt*exp(-1j*omega0*K(i)*t(first_not_zero+n));
    end
    ak(i)=sigm./(T0);% add to the ak vector the sigma
end
 
    
end

