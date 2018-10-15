function [ imHandle,alpha] = images( filename )
%images inputs filename and outputs its handle,Height and Width
%   imHandle,imH,imW

[imSize, b, alpha] = imread(num2str(filename));



hold on;

imHandle = image(imSize,'Alphadata',alpha);
hold on;


set(gca,'YDir','normal');



end

