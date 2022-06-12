clc
clear all
close all
warning off
x = imread('coins.jpg');
imshow(x);
BW1 = roipoly;
BW1 = uint8(BW1);
BW2 = roipoly;
BW2 = uint8(BW2);
BW = BW1 + BW2;
subplot(1,2,1);
imshow(x);
subplot(1,2,2);
imshow(x./BW);
title('Image after division');