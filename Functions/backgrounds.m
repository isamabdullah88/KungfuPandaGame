function [ handleBkground1,handleBkground2 ] = backgrounds
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here


set(gca,'ydir','normal'); hold on;



% Drawing background
bkground = imread('bkground.png');

handleBkground1 = image(bkground,'xdata',0,'ydata',0);
handleBkground2 = image(bkground,'xdata',1200,'ydata',0);



% making walls
% imwalls = imread('wall1.png');
% image([imwalls,imwalls,imwalls,imwalls,imwalls],'xdata',0,'ydata',100);
% 

% The Cart


% The paths

% [path a b] = imread('picture3.png');
% [path1 a1 b1] = imread('picture4.png');
% [path2 a2 b2] = imread('picture6.png');
% [path3 a3 b3] = imread('picture5.png');
% 
% image(path,'xdata',0,'ydata',0,'alphadata',b);hold on;
% image(path3,'xdata',990,'ydata',0,'alphadata',b3);hold on;
% image(path2,'xdata',3160,'ydata',0,'alphadata',b2);hold on;
% image(path1,'xdata',1920,'ydata',0,'alphadata',b1);hold on;


% [path4 a4 b4] = imread('cartc.png');
% image(path4,'xdata',100,'ydata',200,'alphadata',b4);


axis([0 1200 -50 900]);
axis off;

end

