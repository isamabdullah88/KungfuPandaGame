function  [CountBreak] = burning(curPosx,CountBreak)
%Shows the explosion of Bombs
%On the xprojectile points it shows the explosions
hold on;



% Extracting the images

[imExplo1 a1 b1] = imread('burning1.png');
[imExplo2 a2 b2] = imread('burning2.png');
[imExplo3 a3 b3] = imread('burning3.png');
[imExplo4 a4 b4] = imread('burning4.png');
[imExplo5 a5 b5] = imread('burning5.png');
[imExplo6 a6 b6] = imread('burning6.png');
[imExplo7 a7 b7] = imread('burning7.png');
[imExplo8 a8 b8] = imread('burning8.png');

set(gca,'ydir','normal');

axis off;


% Using Arrays to represent the handles of images and alphadatas
Pics = {imExplo1,imExplo2,imExplo3,imExplo4,imExplo5,imExplo6,imExplo7,imExplo8};
Colors = {b1,b2,b3,b4,b5,b6,b7,b8};


%Making the loops
for i = 1:8
    CountBreak = CountBreak+1;
    h(i) = image(Pics{i},'alphadata' ...
        ,Colors{i},'xdata',curPosx,'ydata',270);
    pause(0.09)
end

% Setting the visibility of explosions off
set(h,'visible','off');

end

