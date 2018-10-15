function [ curPos,timeC,a ] = cartProjectile( curPos,timeC,handleP,handleBomb )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
 

a = 30;   % to make the button up until it downs again
theta = 60;
g = 9.81;
v = 90;
tmax = 2*v*sind(theta)/g+0.5;

timeC = timeC + 1;




xProjectile =curPos;

yProjectile =240 + v*sind(theta)*timeC - (g*timeC^2/2);

set(handleP,'xdata',xProjectile,'ydata',yProjectile);

set(handleBomb,'ydata',125+yProjectile); % making the bomb 
                                        %stick with the cart while in jump


if timeC >= tmax-0.05
    timeC = 0;
    a = 1; % to make the button right again
    set(handleP,'ydata',240);
end



end

