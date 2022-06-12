% here we will use rgb images for addition 
clc
clear all
close all
I = imread('images/universe.jpg');
figure;
imshow(I);
title('First Image');
g = size(I); % getting the size of image I to make image J's size as that of I
J = imread('images/capture.jpg');
J = imresize(J,[g(1),g(2)]); % resizing the size of J image as that of the size of image I but only for the rows and columns 
% that's why only 2 parameters are passed in imresize function in second
% argument
figure;
imshow(J);
title('Second image');
for i = 1:g(1) % adding the elements of matrices 
    for j = 1:g(2)
        for k = 1:3 % here third loop is for channel as there are only 3 channels in rgb. you can check the channel by typing the command size(I) in terminal 
            output(i,j,k) = (I(i,j,k)/2 + J(i,j,k)); % decreasing the intensity of image I by 2. output is the added resulted image 
        end
    end
end
figure;
imshow(output);
title('Added resulted image');