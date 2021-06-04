n=10000;     mu=0;     st=1;
for ii=1:100
         a=lhsnorm([mu mu],[st 0;0 st],n);
         x=randn(n,1);
    y=randn(n,1);
         ma(ii)=mean(a(:,1));
    mb(ii)=mean(a(:,2));
    mx(ii)=mean(x);     my(ii)=mean(y);
    t(ii)=ii;
end
mean(ma); mean(mb); mean(mx); mean(my)
