function winagain
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

figure('numbertitle','off','menubar','none');


set(gca,'ydir','normal');
axis([0 1200 0 900]); 
axis off;  hold on;
smiley = importdata('play_again.jpg');
exit = importdata('exit.jpg');

imGui = imread('youwin.jpg');
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

