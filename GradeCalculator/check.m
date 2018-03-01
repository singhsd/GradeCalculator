function[sd]= check()
input = load('C:\Users\hp\Desktop\ML_QUES1\training_set_q1 - Copy.csv');
%fid = fopen('answer.csv','w');
theta([1:31], [1:3])= zeros([1:31], [1:3]);
Z=scaling();
X([1:449], [2:31])=Z([1:449], [1:30]);
X([1:449], 1)=ones([1:449],1);
Y1([1:449], 1)=input([1:449], 31);
Y2([1:449], 1)=input([1:449], 32);
Y3([1:449], 1)=input([1:449], 33);
%ans([1:3], 1)=zeros([1:3], 1);
ans=[];
sd=[];
lambda=0;
f=0;
qw=1;
        %while lambda<=500,
            alpha=0.02;
               % while alpha<=0.2,
                    	theta([1:31],1)=grd(X, Y1, lambda, alpha);
                        theta([1:31],2)=grd(X, Y2, lambda, alpha);
                        theta([1:31],3)=grd(X, Y3, lambda, alpha);
            i=450;
            c1=0;
            c2=0;
            c3=0;
                    while i<=549,
                        k=1;
                        while k<=3,
            Q(1, [2:31])=Z(i, [1:30]);
                        Q(1, 1)=1;
                    ans(1, k)=Q*theta([1:31], k);
                    k=k+1;
                        end;
                if(abs(ans(1, 1)-input(i, 31))<=2.0)
                    c1=c1+1;
                end;
                if((abs(ans(1, 2)-input(i, 32))<=2.0))
                    c2=c2+1;
                end;
                 if(abs(ans(1, 3)-input(i, 33))<=2.0)
                     c3=c3+1;
                   end;
            i=i+1;
        end;
        sd(qw, 1)=c1;
        sd(qw, 2)=c2;
        sd(qw, 3)=c3;
        sd(qw, 4)=lambda;
        sd(qw, 5)=alpha;
        qw=qw+1;
        alpha=alpha*10;
               %end;
            %lambda=lambda+200;
        %&end;
      %{
      i=1;
        while i<=100,
        fprintf(fid, '%d,', ans(i, [1:3])) ;
        fprintf(fid, '\n');
        i=i+1;
        end;
        fclose(fid);
        %}
end	
