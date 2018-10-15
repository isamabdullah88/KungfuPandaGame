% This file generates alphadata for picture through code.
% It makes all white pixels transparent

clc
clear
close all

fig=figure;
set(fig, 'position', [80 80 800 500])
hold on

axis equal
axis([0 900 0 600])

imgBackData = imread('background.bmp');
imgFrData= imread('frontFace.png');

h_background = imagesc(imgBackData);
h_frontImg = imagesc(imgFrData);


aFront = (double(imgFrData(:,:,1))+double(imgFrData(:,:,2))+...
    double(imgFrData(:,:,3)))./3;

aFront=1-(aFront==255);

% aFront = ones(size(imgFrData,1),size(imgFrData,2));

set(h_frontImg, 'XData', [125 375], ...
    'YData', [125 375], 'alphaData', aFront);