[ handle ] = imageRun;
index = 1;
coordinate = 0;
while 1
    index = index+1;
    
    [ index ,coordinate,handle ] = running( index ,coordinate,handle );
    coordinate = coordinate + 50;
    pause(0.05)
    
end