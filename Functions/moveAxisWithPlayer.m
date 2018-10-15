clc
clear
close all

fig = figure('position', [100 50 1000 600]);
set(fig, 'KeyPressFcn', 'keyPressed=get(fig, ''CurrentCharacter'');');
set(fig, 'KeyReleaseFcn', 'keyPressed='''';');
set(fig, 'WindowButtonDownFcn', 'done=1;');
hold on
axis equal
axis([0 1200 -90 880])

keyPressed='';

r = 2;
curPos = [0 0];
% h_rect = rectangle('position', [loc [2 2].*r], 'facecolor', 'r');









set(handleP, 'xdata', curPos(1),...
    'ydata', curPos(2));
hold on; axis equal;



done=0;
while ~done
    if keyPressed=='d'
        curPos=curPos+[2 0];
    elseif keyPressed=='a'
        curPos=curPos+[-2 0];
    end
    
    axis([(curPos(1)-10) (curPos(1)-10+1200) -90 900]);
    
%     set(h_rect, 'position', [loc [2 2].*r]);
    set(h_rect, 'xdata', [curPos(1)+2*r ]);
    pause(0.01)
end

clc
clear
close all