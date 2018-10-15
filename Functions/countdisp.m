function countdisp( handleCount,handle1,handle2,handle3,handle4 ...
    ,handle5,handle6,handle7,handle8,handle9,CountFire,i )
%This displays the numbers accordingly


set(handleCount,'xdata',i+50);


set(handle9,'visible','off');
set(handle1,'visible','off');
set(handle2,'visible','off');
set(handle3,'visible','off');
set(handle4,'visible','off');
set(handle6,'visible','off');
set(handle7,'visible','off');
set(handle5,'visible','off');
set(handle8,'visible','off');


if CountFire == 1
    
    set(handle1,'visible','on','xdata',i+100);
end

if CountFire == 2
    
    set(handle2,'visible','on','xdata',i+100);
end

if CountFire == 3
    
    set(handle3,'visible','on','xdata',i+100);
end

if CountFire == 4
    
    set(handle4,'visible','on','xdata',i+100);
end

if CountFire == 5
    
    set(handle5,'visible','on','xdata',i+100);
end

if CountFire == 6
    
    set(handle6,'visible','on','xdata',i+100);
end

if CountFire == 7
    
    set(handle7,'visible','on','xdata',i+100);
end

if CountFire == 8
    
    set(handle8,'visible','on','xdata',i+100);
end

if CountFire == 9
    
    set(handle9,'visible','on','xdata',i+100);
end




end

