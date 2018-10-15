function [handleCount,handle1,handle2,handle3,handle4 ...
    ,handle5,handle6,handle7,handle8,handle9] = fireimage
%Counts the fire and displays the number


axis([0 1200 -50 900]); hold on;
set(gca,'ydir','normal');


[imCount im alphaC] = imread('bombCount.png');
[imCount1 im1 alphaC1] = imread('1.png');
[imCount2 im2 alphaC2] = imread('2.png');
[imCount3 im3 alphaC3] = imread('3.png');
[imCount4 im4 alphaC4] = imread('4.png');
[imCount5 im5 alphaC5] = imread('5.png');
[imCount6 im6 alphaC6] = imread('6.png');
[imCount7 im7 alphaC7] = imread('7.png');
[imCount8 im8 alphaC8] = imread('8.png');
[imCount9 im9 alphaC9] = imread('9.png');

handleCount = image(imCount,'xdata',50,'ydata',900-100,'alphadata',alphaC);

handle1 = image(imCount1,'xdata',100,'ydata',900-100,'alphadata',alphaC1);
set(handle1,'visible','off');

handle2 = image(imCount2,'xdata',100,'ydata',900-100,'alphadata',alphaC2);
set(handle2,'visible','off');

handle3 = image(imCount3,'xdata',100,'ydata',900-100,'alphadata',alphaC3);
set(handle3,'visible','off');

handle4 = image(imCount4,'xdata',100,'ydata',900-100,'alphadata',alphaC4);
set(handle4,'visible','off');

handle5 = image(imCount5,'xdata',100,'ydata',900-100,'alphadata',alphaC5);
set(handle5,'visible','off');

handle6 = image(imCount6,'xdata',100,'ydata',900-100,'alphadata',alphaC6);
set(handle6,'visible','off');

handle7 = image(imCount7,'xdata',100,'ydata',900-100,'alphadata',alphaC7);
set(handle7,'visible','off');

handle8 = image(imCount8,'xdata',100,'ydata',900-100,'alphadata',alphaC8);
set(handle8,'visible','off');

handle9 = image(imCount9,'xdata',100,'ydata',900-100,'alphadata',alphaC9);
set(handle9,'visible','off');




   


end

