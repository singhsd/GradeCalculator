function [X] = scaling(  )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%importfile(input);
input = load('C:\Users\hp\Desktop\ML_QUES1\training_set_q1 - Copy.csv');
X=input([1:549], [1:30]);
Y=input([1:549] ,[31:33]);
X([1:549] ,3)=X([1:549] ,3)/22;
X([1:549] ,7)=X([1:549] ,7)/4;
X([1:549] ,8)=X([1:549] ,8)/4;
X([1:549] ,9)=X([1:549] ,9)/4;
X([1:549] ,10)=X([1:549] ,10)/4;
X([1:549] ,11)=X([1:549] ,11)/4;
X([1:549] ,12)=X([1:549] ,12)/4;
X([1:549] ,13)=X([1:549] ,13)/4;
X([1:549] ,14)=X([1:549] ,14)/4;
X([1:549] ,15)=X([1:549] ,15)/4;
X([1:549] , [24:29])=X([1:549] , [24:29])/5;
X([1:549] ,30)=X([1:549] ,30)/93; 
end

