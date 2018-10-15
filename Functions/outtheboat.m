function [Count] =  outtheboat( handleB,handleC,xProjectile,Count )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here


Boat1 = get(handleB, 'xdata');
Boat2 = get(handleC, 'xdata');



if (xProjectile > (Boat1+50) && xProjectile < (Boat1+260))
    Count = Count + 1;
    set(handleB,'visible','off');
    score =['Your Score is ' num2str(Count*100)];
    title(score,'color','b','fontname','Algerian','fontsize',14.5);

end
 if (xProjectile > (Boat2+50) && xProjectile < (Boat2+260))
     Count = Count + 1;
     set(handleC,'visible','off');
     score =['Your Score is ' num2str(Count*100)];
     title(score,'color','r','fontname','Algerian','fontsize',14.5);

 end







end

