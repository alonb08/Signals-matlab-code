function [x] = ICFT(omega,X,t)
%create inverse transforn ,get t not omega
[y] = CFT(omega,X,-t);
x=y/(2*pi);
end
