function [over] = explosionbullet( Bulletx,handleMonkey )
%Shows the explosion of Bombs
%On the xprojectile points it shows the explosions

% Extracting the images
[imExplo1 a1 b1] = imread('explosion1.png');
[imExplo2 a2 b2] = imread('explosion2.png');
[imExplo3 a3 b3] = imread('explosion3.png');
[imExplo4 a4 b4] = imread('explosion4.png');

set(gca,'ydir','normal');

axis off;


% Using Arrays to represent the handles of images and alphadatas
Pics = {imExplo1,imExplo2,imExplo3,imExplo4};
Colors = {b1,b2,b3,b4};


%Making the loops
for i = 1:4
    h(i) = image(Pics{i},'alphadata' ...
        ,Colors{i},'xdata',Bulletx+150,'ydata',(3*355/4));
    pause(0.041)
end

% Setting the visibility of explosions off
set(h,'visible','off');

% Setting again the monkey to infinity and visibilty is off
set(handleMonkey,'visible','off');
set(handleMonkey,'xdata',90000);

over = 0;

end

