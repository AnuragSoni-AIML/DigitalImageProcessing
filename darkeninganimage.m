% darkening the image i.e decreasing the intensity by some offset value
clc
clear all
close all
warning off
x = imread('universe.jpg');
subplot(1,2,1);
imshow(x);
title('Original Image');
subplot(1,2,2);
imshow(x-45); % decreasing each pixel of the image by some offset i.e. 45
title('Image after darkness');