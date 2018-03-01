function [ val ] = summation( X, Y, x, theta)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%j=1;
h([1:449], 1)=zeros([1:449], 1);
%val([1:449], 1)=zeros([1:449], 1);
h=X*theta;
val=sum( (h-Y) .* X([1:449], x));
end