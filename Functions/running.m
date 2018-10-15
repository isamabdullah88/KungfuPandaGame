function [ index ,coordinate,handle,CountBreak ] = running ...
    ( index ,coordinate,handle,handleP,CountBreak )
% %running function consists of collision with running man and also the
% running man
% It also shows the buning of cart

% Obtaining the cart coordinates
curPosx = get(handleP, 'xdata');
curPosy = get(handleP, 'ydata');

% The motion starts

set(handle{index-1},'visible','off');
set(handle{index},'visible','on');
set(handle{index},'xdata',coordinate,'ydata',260);
set(handle{5},'visible','off');

if index >= 5
    index = 1;
end

if (coordinate-40 >= (curPosx) && coordinate <= (curPosx + 260) && curPosy <= 260+90) 
    
    [CountBreak] = burning(curPosx,CountBreak);
    
end

