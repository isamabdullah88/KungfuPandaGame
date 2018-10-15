function [ handleW ] = watch
%This function makes the watchout image
%   and displays at the right time

[imW, a, alphaW] = imread('watch.png');
handleW = image(imW,'xdata',600-265,'ydata',900-370,'alphadata',alphaW);
set(handleW,'visible','off');



end

