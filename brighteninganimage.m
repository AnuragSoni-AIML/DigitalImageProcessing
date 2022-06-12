% brightening the image i.e. increasing the intensity of each pixel of the image by some
% offset value
clc
clear all
close all
warning off
x = imread('images/capture.jpg');
subplot(1,2,1);
imshow(x);
title('Original Image');
subplot(1,2,2);
imshow(x+45); % the offset here chosen is 45 added to each pixel of the image matrix
title('Image after brightness');
