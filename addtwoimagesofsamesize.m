% adding two images i.e. superimposing two images
% the basic idea is to add two matrices of same size because
% images are nothing but the matrices only
clc
clear all
close all
I = imread('images/rice.png');
J = imread('images/cameraman.tif');
% the above two images are grayscale as their sizes are 256 x 256 by
% checking their size by size(I) in terminal
for i = 1:256 % loop for adding elements of matrices or pixels of images
    for j = 1:256
        % output1(i,j) = (I(i,j) + J(i,j)); % output is the resultant image of addition
        output2(i,j) = (I(i,j) + J(i,j)/2); % decreasing the intensity of cameraman.tif by dividing by 2 each pixel
    end
end
%imshow(output1)
imshow(output2)