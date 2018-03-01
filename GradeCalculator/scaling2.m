function [X] = scaling2(  )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%importfile(input);
input = load('C:\Users\souvik paul\Desktop\ML_QUES1\test_set1.csv');
X=input([1:100], [1:30]);
X([1:100] ,3)=X([1:100] ,3)/22;
X([1:100] ,7)=X([1:100] ,7)/4;
X([1:100] ,8)=X([1:100] ,8)/4;
X([1:100] ,9)=X([1:100] ,9)/4;
X([1:100] ,10)=X([1:100] ,10)/4;
X([1:100] ,11)=X([1:100] ,11)/4;
X([1:100] ,12)=X([1:100] ,12)/4;
X([1:100] ,13)=X([1:100] ,13)/4;
X([1:100] ,14)=X([1:100] ,14)/4;
X([1:100] ,15)=X([1:100] ,15)/4;
X([1:100] , [24:29])=X([1:100] , [24:29])/5;
X([1:100] ,30)=X([1:100] ,30)/93; 
end

