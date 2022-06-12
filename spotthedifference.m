% here we wil spot the differences between two images using subtraction of
% two images that is nothing just the subtraction of two matrices
clc
clear all
close all
warning off
I = imread('images/image1.jpg'); % reading first image
figure;
imshow(I);
g = size(I); % taking the size of image I in order to make I and J similar in size
J = imread('images/image2.jpg'); % reading the second image
figure;
imshow(J);
J = imresize(J,[g(1),g(2)]); % resizing the second image as that of first image
figure;
imshow(I-J); % the subtracted resulted image which shows the differences
title('Difference between two images');
