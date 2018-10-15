function [z,rept,Bkgroundx] = changingBkground ...
    (handleBkground1,handleBkground2,rept,Bkgroundx,z )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

if length(rept) == 240
    rept = 0;
    Bkgroundx = Bkgroundx+1200;
    
    if z == 1
        set(handleBkground1,'xdata',Bkgroundx,'ydata',0);
    end
    if z == -1
        set(handleBkground2,'xdata',Bkgroundx,'ydata',0);
    end
    z = -z;
    
end
end
