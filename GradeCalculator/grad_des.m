function [ theta ] = grad_des(  )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
X([1:300] [2:31])=scaling();
input1 = load('C:\Users\hp\Desktop\ML_QUES1\training_set_q1 - Copy.csv');
Y([1:300], [1:3])= input1([1:300], [31:33]);
X([1:300], 1)=ones([1:300], 1);
theta(1,[1:31])=zeros(1,[1:31]);
i=1,temp(1,[1:31])=zeros(1,[1:31]);
while i<=2000
    j=1,
    while j<=31
        temp(1,j)=theta(1,j)-theta(1,j)*alpha*lambda/300-alpha*summmation(X,Y,j,theta)/300;
        j=j+1;
    end;
	theta(1 ,[1:31])=temp(1,[1:31]);
    i=i+1;
end;
end

