function [time,Fire,xProjectile,Count,CountFire,mousehappen] = projectileBomb ...
    ( handleBomb,time,curPos,Fire,handleB,handleC,Count,CountFire,mousehappen )
%UNTITLED Summary of this function goes here
%Detailed explanation goes here


theta = 60;
g = 15.81;
v = 50;
tmax = 2*v*sind(theta)/g+0.5;

time = time+0.5;




xProjectile =curPos+260+v*cosd(theta)*time;
yProjectile =100+(3*355/4) + v*sind(theta)*time - (g*time^2/2);
set(handleBomb,'xdata',xProjectile,'ydata',yProjectile);


if time > tmax+4;
    set(handleBomb,'visible','off');
    
    CountFire = CountFire - 1; % Counts the number of bombs fired
    
    [xProjectile] = explosion(xProjectile);
    [Count] =  outtheboat( handleB,handleC,xProjectile,Count );
    
    
    time = 0;
    Fire = [];
    mousehappen = 0;
    
end




end

