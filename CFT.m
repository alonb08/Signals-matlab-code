%Calculates the Fourier Transform of x
function [X] = CFT(t,x,omega)
dt=0.02;%Was given as const
X(1:length(omega))=0;
for n=1:length(t)
    X= X+x(n)*exp(-1j.*omega*t(n))*dt;
end
end
