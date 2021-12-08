data=load('ex1data2.txt');
x=data(:,1:(length(data(1,:))-1));
y=data(:,length(data(1,:)));
%x=[ones(length(x(:,1)),1),x];
meanMat=mean(x);
meanMat=repmat(meanMat,length(x(:,1)),1);
stdMat=std(x);
stdMat=repmat(stdMat,length(x(:,1)),1) .^-1;
x-=meanMat;
x=stdMat .*x;
%for i=1:length(x(1,:))
 %   meanCol=sum(x(:,i))/length(x(:,i));
  %  meanMatrix=meanCol*eye(length(x,i),1);
   % x(:,i)-=meanCol;
    