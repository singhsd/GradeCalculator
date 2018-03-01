function[ ]= output()
input = load('C:\Users\hp\Desktop\ML_QUES1\training_set_q1 - Copy.csv');
theta([1:31], [1:3])= zeros([1:31], [1:3]);
Z=scaling2();
Z1=scaling();
X([1:100], [2:31])=Z([1:100], [1:30]);
X([1:100], 1)=ones([1:100],1);
X1([1:449], [2:31])=Z1([1:449], [1:30]);
X1([1:449], 1)=ones([1:449],1);
Y1([1:449], 1)=input([1:449], 31);
Y2([1:449], 1)=input([1:449], 32);
Y3([1:449], 1)=input([1:449], 33);
ans=[];
lambda=0;
qw=1;
            alpha=0.02;
                    	theta([1:31],1)=grd(X1, Y1, lambda, alpha);
                        theta([1:31],2)=grd(X1, Y2, lambda, alpha);
                        theta([1:31],3)=grd(X1, Y3, lambda, alpha);
            i=1;
            f=fopen('answer.csv','w');
                    while i<=100,
                        k=1;
                        while k<=3,
            Q(1, [2:31])=Z(i, [1:30]);
                        Q(1, 1)=1;
                    ans(1, k)=Q*theta([1:31], k);
                    k=k+1;
                        end;
                fprintf(f,'%d,',round(ans(1, [1:3])));
                fprintf(f,'\n');
            i=i+1;
        end;
        fclose(f);
end	
