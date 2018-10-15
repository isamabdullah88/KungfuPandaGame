function whileobs( handleMonkey,i )
%This displays the images of obstructions on a random map

obsx = i+900 +  randi(25);
set(handleMonkey,'visible','on','xdata',obsx);



end

