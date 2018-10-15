function [over,nomore] = obscollision( handleMonkey,Bulletx,curPos,i,nomore )
% Checks the collision

poscoll = get(handleMonkey,'xdata');


if ((Bulletx+250 >= poscoll) && (Bulletx+250 <= poscoll + 30) && (nomore == 1))
    
    
    
    
    nomore = 0; % Nomore display of monkey
    
    % Making the explosion
    [over] = explosionbullet( Bulletx,handleMonkey );
    
elseif curPos+280 >= poscoll
    
    
    over = 1;
    
else
    
    over = 5;
    if nomore ~= 0
        whileobs( handleMonkey,i );
    end
end


end

