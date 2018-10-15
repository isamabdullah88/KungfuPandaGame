function playagain
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


f = figure('numbertitle','off','menubar','none'); 
axis([0 1200 0 900]);
axis off; hold on;


smiley = importdata('play_again.jpg');
exit = importdata('exit.jpg');

imGui = imread('panda.png');
image(imGui,'xdata',0,'ydata',0);
% Construct the components.
hsurf = uicontrol('Style','pushbutton',...
    'String','','Position',[195,330,200,48], ...
    'Callback','project2nd');

 
%set the smiley image as the button background
set(hsurf ,'CDATA',smiley);

exitB = uicontrol('Style','pushbutton',...
    'String','','Position',[250,48,82,40], ...
    'Callback','close');
set(exitB,'cdata',exit);





end

