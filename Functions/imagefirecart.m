function [ handleBullet ] = imagefirecart
% This function fires the striaght bullet in addition to the bomb
%   Detailed explanation goes here
[imBullet, n, alphaB] = imread('bullet1.png');
handleBullet = image(imBullet);
set(handleBullet,'visible','off','alphadata',alphaB,'ydata',150+(3*355/4));


end

