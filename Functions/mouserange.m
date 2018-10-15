function [ range ] = mouserange(handleP,Fire,range)
%This checks that the mouse is in the rangle of the cart 


Posx = get(handleP,'xdata');

% Checking that mouse range is in the cart
if (Fire(1,1)>= Posx && Fire(1,1) ...
        <= Posx+400-50 && Fire(1,2)>= 240 && Fire(1,2)<= 240+355)
    range = 1;
else
    range = 0;

end

