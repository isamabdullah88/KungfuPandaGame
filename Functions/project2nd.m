
Clean;

% the figure for the projectile motion of bomb

fig = figure('numbertitle','off','menubar','none');







%% All Displays



% Backgrounds
[ handleBkground1,handleBkground2 ] = backgrounds;

% Making Cart
c = 'cart1.png';
[ handleP,imCart ] = Carts(c);


% Making the watchout
[ handleW ] = watch;


% making river
River1 = 'river1.png';
River2 = 'river2.png';

[imriver1, t, alphaR1] = rivers(River1);
[imriver2, t1, alphaR2] = rivers(River2);

[ R1handle,alphaR1 ] = riversHandle(imriver1,alphaR1);
[ R2handle,alphaR2 ] = riversHandle(imriver2,alphaR2);





% making boat
fboat = 'boat.png';
[handleB,alphaB] = images(fboat);
[handleC,alphaC] = images(fboat);
set(handleC,'xdata',-450);
secondboat = 0;








% Moving Cart
% Making the direction keys
set(gcf, 'KeyPressFcn', 'a = get(gcf, ''CurrentCharacter'');');


% Making The fire Count
[handleCount,handle1,handle2,handle3,handle4 ...
    ,handle5,handle6,handle7,handle8,handle9] = fireimage;



% Making the fire Bullet
[ handleBullet ] = imagefirecart;


% Making the Bomb image only
curPos = 100;
[ handleBomb ] = imageBomb;


% Making the run image
[ handle ] = imageRun;


% Making the click of mouse
set(fig, 'WindowButtonDownFcn', 'Fire = get(gca, ''CurrentPoint'')');
Fire = [];



% Making the Obstructions
[ handleMonkey ] = obstructionimage;












%% All Variables

a = 1;

CountFire = 9; % Count for no of bombs

CountBreak = 0; % Count for break
% Moving the view
q = [1 1];
x = 700;
y = -80;
dy = 1;
time = 0; %time for bomb
timeC = 0; % time for cart

% Changing the background view

z = 1; % the changing variable for giving condition to change the setting
% of background
rept = 0; % changing variable for counting the view distance
Bkgroundx = 1200; % The distance change for background

index = 1; % use for the changing sprites of the run

happen = -1; % use to see that man still runs while random changes

mousehappen = 0; % use to see that mouse is in the range

addcoordinate = 0; % used for making velocity of the running man

Count = 0;

theta = 60;% used to check the velocity
g = 15.81;
v = 50;
tmax = 2*v*sind(theta)/g+0.5; % Check for the time of projectile


rBullet = 0; % The addition for the position of bullet

range = 0; % For range

Bulletx = 900000; % The x coordinate of monkey initially set to infinity;

nomore = 1; % Nomore displays the monkey when it is 0

% over = 5; % Used to maintain the motion of monkey












%% Main Loop

while 1
    
    
    
    
    %% All Changing Variables
    
    i = i+5; % used to move axis
    index = index + 1; % used for run to change the sprite
    bcoordinate  = i - 200; % use for the x coordinate to set the man coordintes,
    %differ by b
    
    
    
    rept = [0 rept]; % to change the background we measure by this
    
    
    if time >= 0
        set(handleBomb,'visible','on');
    end
    
    
    % Setting the Image of Bomb with the cart
    set(handleBomb,'xdata',curPos+260,'ydata',100+(3*355/4));
    
    dy = dy+1;% used for oscillating the boat
    yins = 5*mod(dy,2); % used for oscillating the boat
    
    
    
    
    
    % key control
    
    double(a)
    
    if double(a) == 28  %left arrow
        
        curPos = get(handleP, 'xdata');
        curPos = curPos-10;
        set(handleP, 'xdata', curPos );
        disp(['the char is ' num2str(double(a))]);
        a = 1;
        
    elseif double(a) == 29 %right arrow
        
        curPos = get(handleP, 'xdata');
        curPos = curPos+10;
        set(handleP, 'xdata', curPos);
        a = 1;
        
    elseif double(a) == 30 % upward arrow
        
        
        curPos = get(handleP, 'xdata');
        
        [ curPos,timeC,a ] = cartProjectile( curPos,timeC,handleP,handleBomb );
    end
    
    
    
    
    
    
    
    
    
    
    
    
    %% All Functions
    
    
    % Count Fire Display
    countdisp( handleCount,handle1,handle2,handle3,handle4 ...
        ,handle5,handle6,handle7,handle8,handle9,CountFire,i )
    
    
    
    
    
    % River
    
    
    if length(q) <= 3
        q = [q 1];
        [R1handle,R2handle,alphaR1,i] = riverMove(R1handle,R2handle,alphaR1,i);
        
        
    elseif (length(q) > 3 && length(q) <= 6)
        q = [q 1];
        [R2handle,R1handle,alphaR2,i] = riverMove(R2handle,R1handle,alphaR2,i);
        
    end
    
    if length(q) > 6
        q = 0;
    end
    
    
    
    
    
    
    % boat
    x = x-5;
    
    set(handleB,'xdata',x,'ydata',y+yins);
    set(handleC,'xdata',x+450,'ydata',y+yins);
    
    if (x+307 < i && x+450+307 < i)
        x = i+1200;
        
        set(handleB,'visible','on');
        
        set(handleC,'visible','on');
        
    end
    
    
    
    
    
    
    
    
    
    
    % Projectile of Bomb
    if (~isempty(Fire) && CountFire >= 1 && CountFire <= 9)
        [ range ] = mouserange(handleP,Fire,range);
        if (range == 1 || mousehappen == 1)
            mousehappen = 1;
            [time,Fire,xProjectile,Count,CountFire,mousehappen] = projectileBomb ...
                (handleBomb,time,curPos,Fire,handleB,handleC,Count,CountFire,mousehappen);
        else
            
            range = 0; % So that bullet can be reached the other end
            mousehappen = 0; % So that bullet can be reached the other end
            
            % Bullet
            [ rBullet,mousehappen,range,Fire,Bulletx ] = fireBullet ...
                ( handleBullet,rBullet,Fire,curPos,i,mousehappen,range );
            
            
            
            
            
        end
        
        
    end
    
    
    
    
    
    
    
    
    %Running the man
    if (randi(100) == 1 || happen == 1)
        
        addcoordinate = addcoordinate + 20; % to make velocity
        happen = 1; % to make the eunning man continue
        coordinate = bcoordinate + 150 + addcoordinate;
        
        
        % Checking Collision with the Cart and bullet
        [over,nomore] = obscollision( handleMonkey,Bulletx,curPos,i,nomore );
        
        if over == 1
            close all;
            break;
            
        end
        
        disp('shuru');
        watchdisp( handleW,i ) % displays the watchout image
        
        % avoid exceeding from axis
        if coordinate > i + 10 +1200
            watchdisappear( handleW ) % disappears the watchout
            addcoordinate = 0;
            coordinate = 0;
            happen = -1;
            disp('khatam')
            % Also disappears the monkey
            set(handleMonkey,'xdata',90000);
            nomore = 1; % Makes the monkey displayed again
        end
        
        [ index ,coordinate,handle,CountBreak ] = running ...
            ( index ,coordinate,handle,handleP,CountBreak );
        
        if CountBreak >= 8; % when the game is over, an image is displayed
            
            break;
            
        end
        
    end
    
    % Dont forget to make the indices reset.
    if index >= 5
        index = 1;
    end
    
    
    
    
    
    
    
    
    
    
    axis off;
    
    
    
    axis([i i+1200 -50 900]);
    
    
    % changing the background
    [z,rept,Bkgroundx] = changingBkground ...
        (handleBkground1,handleBkground2,rept,Bkgroundx,z );
    
    
    % Winning Condition
    if Count >= 8
        close all;
        break;
    end
    
    
    
    
    
    drawnow;
    
    
end
close all;
if Count >= 8
    winagain;
else
    playagain;
end

