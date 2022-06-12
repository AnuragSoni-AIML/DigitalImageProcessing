% detection of defects is most widely used in industries
% here we are taking pcb circuit images for detecting defects 
% and taking coke filled unfilled bottles for detection 
% it is nothing but just the subtraction of two images
clc
clear all
close all
warning off
% x = imread('images/pcb1.jpg'); % correct circuit
x = imread('images/coke1.jfif');
subplot(1,3,1);
imshow(x);
% title('pcb image');
title('filled bottles');
g = size(x);
y = imread('coke2.jpg'); % defective circuit manufactured
y = imresize(y,[g(1),g(2)]); % resizing the size of y as that of x to subtract it from x
subplot(1,3,2);
imshow(y);
% title('pcb defective image');
title('manufactured bottles');
subplot(1,3,3);
imshow(y-x); % error detection image
title('error detection');
% Note: here I have npt taken proper images but you can take those for
% better understanding
