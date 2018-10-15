function [ Rhandle,alphaR ] = riversHandle( imriver,alphaR )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

Rhandle = image(imriver,'xdata',0,'ydata',-145,'alphadata',alphaR);
hold on;

end

