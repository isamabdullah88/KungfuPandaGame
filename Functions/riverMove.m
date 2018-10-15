function [R1handle,R2handle,alphaB,i] = riverMove(R1handle,R2handle,alphaB,i)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

set(R2handle,'visible','off');

set(R1handle,'visible','on');

set(R1handle,'xdata',i,'ydata',-50, ...
    'alphadata',alphaB);hold on;


end

