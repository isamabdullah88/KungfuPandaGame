function [ handle ] = imageRun
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

axis equal;
axis([0 1200 -60 900]);
hold on;
set(gca,'ydir','normal');
[imRun1 g1 alphaR1] = imread('run1.png');
[imRun2 g2 alphaR2] = imread('run2.png');
[imRun3 g3 alphaR3] = imread('run3.png');
[imRun4 g4 alphaR4] = imread('run4.png');

handleRun1 = image(imRun1,'alphadata',alphaR1);
set(handleRun1,'visible','off');

handleRun2 = image(imRun2,'alphadata',alphaR2);
set(handleRun2,'visible','off');

handleRun3 = image(imRun3,'alphadata',alphaR3);
set(handleRun3,'visible','off');

handleRun4 = image(imRun4,'alphadata',alphaR4);
set(handleRun4,'visible','off');

handleRun5 = rectangle('position',[0 0 1 1]);


handle = {handleRun5 handleRun1 , handleRun2 , handleRun3 , handleRun4};


end

