function [ handleBomb ] = imageBomb
    
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here



[imBomb, b, alphaBomb] = imread('bomb.png');



imBomb = imresize(imBomb,0.40); hold on;

alphaBomb = imresize(alphaBomb,0.40); hold on;

axis equal;



handleBomb = image(imBomb,'xdata',260, ...
    'ydata',150+(3*355/4),'alphadata',alphaBomb); hold on;






end

