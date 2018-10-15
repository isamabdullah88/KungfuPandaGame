function [ xcomp,ycomp ] = projectile( imHandle,x,y,t )
% projectile makes the projectile of the object, takes inputs of
% ginput,loop value
%   x,y,velocity,imAlpha,loop value
theta = atand(y/x);
V = 66;
g = 9.81;
% measuring heights and widths

[h, w, d] = size(imHandle);
xcomp = V*cosd(theta)*t;
ycomp = (V*sind(theta)*t) - ((g*t^2)/2);
set(imHandle,'xdata',xcomp,'ydata',ycomp);

end

