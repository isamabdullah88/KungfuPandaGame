function [ x,i ] = repeatingBoats( x,i,handleB,handleC,secondboat,y,yins )
%repeats the motion of the boat plus an additional boat
%   Detailed explanation goes here



set(handleB,'xdata',x,'ydata',y+yins);


if (x+307 < i && x+450+307 < i)
    x = i+1200;
    secondboat = 1;
end


if secondboat == 1
    set(handleC,'visible','on');
    set(handleC,'xdata',x+450,'ydata',y+yins);
end



end

