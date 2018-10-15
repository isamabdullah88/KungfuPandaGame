clc
f = figure('numbertitle','off','menubar','none'); 

axis off; hold on;
set(gca,'ydir','normal');
axis([0 1200 -50 900]);

text(425,310,'Your Name');

smiley = importdata('play.jpg');
exit = importdata('exit.jpg');

imGui = imread('button.jpg');
image(imGui,'ydata',-50,'xdata',-50);
% Construct the components.
hsurf = uicontrol('Style','pushbutton',...
    'String','','Position',[425,310,80,75], ...
    'Callback','project2nd');

 
%set the smiley image as the button background
set(hsurf ,'CDATA',smiley);

exitB = uicontrol('Style','pushbutton',...
    'String','','Position',[250,48,82,40], ...
    'Callback','close');
set(exitB,'cdata',exit);

