function[theta] = grd(X, Y, lambda, alpha)
		
			i=1;
            %figure(1);
            %hold on;
            J=[];
	temp([1:31], 1)=zeros([1:31], 1);
	theta([1:31], 1)=zeros([1:31], 1);
	while i<=1000,
        j=1;
		while j<=31,
			temp(j,1) = theta(j,1)*(1-(alpha*lambda)/449)-(alpha/449)*summation(X, Y, j, theta);
				j=j+1;
		end;
        J =[J sum(((X*temp)-Y).*((X*temp)-Y))/898 + lambda*sum(temp.*temp)/898];
        theta=temp;
       % plot(i,J);
        %J
        i=i+1;
	end;
    %plot(1:1000, J, 'b');
end