
axis off;
set(gca,'ydir','normal'); hold on;
axis([0 1200 -50 900]);
smiley = importdata('play_again.jpg');
imGui = imread('panda.png');
image(imGui,'xdata',-320,'ydata',-50);
% Construct the components.
hsurf = uicontrol('Style','pushbutton',...
    'String','','Position',[195,330,200,48], ...
    'Callback','project2nd');

 
%set the smiley image as the button background
set(hsurf ,'CDATA',smiley);
