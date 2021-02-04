%Box-Muller Random Number Generator
clear all

%% (a)
%Calculate uniform random values
n=2000;
U1=rand(1,n);
U2=rand(1,n);

%Define parameters
mu = 0.2; % mean
sigma = 0.1; % standard deviation

%Transform U1 U2 into two standard normal random numbers N1 N2
N1 = (sqrt(-2*log(U1))).*(cos(2*pi()*U2));
N2 = (sqrt(-2*log(U1))).*(sin(2*pi()*U2));

%Transformation to normal with mean mu and S.D sigma
N1 = mu + (sigma*N1);
N2 = mu + (sigma*N2);

%% (b)
%plotting the analytical probability density function fn(x)
a = -0.2; %left limit
b = 0.6; %right limit
x = linspace(a,b,200); %grid with 200 equal steps

%analytical normal PDF with x as an argument
f1 = 1/(sqrt(2*pi)*sigma)*exp(-((x-mu)/sigma).^2/2);

%analytical normal PDF with N2 as an argument
f2 = 1/(sqrt(2*pi)*sigma)*exp(-((N2-mu)/sigma).^2/2);

%New uniform random values
U=rand(1,n);

figure(1)
plot(x,f1); %plotting analytical PDF
hold on
plot(N2,f2.*U,'.'); %covering area underneeth with random points
xlabel('x') % label of the x axis
legend('PDF', 'Random Points')
title('Normal distribution with \mu = 0.2 and \sigma = 0.1')







