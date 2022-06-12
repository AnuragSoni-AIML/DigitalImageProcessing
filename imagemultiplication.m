clc
clear all
close all
warning off
x = imread('coins.jpg');
imshow(x); 
% creating first mask
BW1 = roipoly; % roipoly is used to create mask over the area of the image you want to display after image multiplcation
BW1 = uint8(BW1); % convert the masked portion of the image into an image of type unsigned int 8 because in uint8 you have range 0-255 in which 255 refers to brightest colour in rgb while in double there is only 0 and 1 if 1 then the pixel will be white and if 0 then the pixel will be black
imshow(x);
% creating second mask
BW2 = roipoly; 
BW2 = uint8(BW2);
BW = BW1 + BW2; % adding both the masked images of the original image
subplot(1,2,1);
imshow(x);
title('Original Image');
subplot(1,2,2);
imshow(x.*BW); % image multiplication i.e. multiplying the original image matrix with the uint8 masked image element by element that is why we used .* to multiply element by element of the matrices 
% it will made all the area rest of the masks we created black as it will
% become 0 
title('Image after Multiplication');
