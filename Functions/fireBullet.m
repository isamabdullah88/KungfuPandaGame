function [ rBullet,mousehappen,range,Fire,Bulletx ] = fireBullet ...
    ( handleBullet,rBullet,Fire,curPos,i,mousehappen,range )
% This function shows the bullet firing





Bulletx = curPos + rBullet;


set(handleBullet,'visible','on','xdata',Bulletx+300-40,'ydata',150+(3*355/4));


rBullet = rBullet + 25;

if Bulletx > i + 800;
    
    
    set(handleBullet,'visible','off');
    
    
    rBullet = 0; % So that bullet may relaunch
    mousehappen = 2; % So that projectile may start
    range = 2; % So that projectile may start
    Fire = []; % So that projectile may start
end


end

