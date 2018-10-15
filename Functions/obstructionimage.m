function [ handleMonkey ] = obstructionimage
%Makes the obstruction


[imMonkey b1 alphaS] = imread('monkey.png');



handleMonkey = image(imMonkey,'alphadata',alphaS,'ydata',240,'xdata',90000);
set(handleMonkey,'visible','off');


end

