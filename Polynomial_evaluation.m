P= [1 -18 144 -672 2016 -4032 5376 -4608 2304 -512];
x = 1920:1:2080;
y = polyval(P,x);
plot(x,y,'rx');

hold on;
z = @(x)(x-2).^9;
plot(x,z(x),'bo');
legend('polynomial evaluation','evaluation through a function handle i.e.expression');

%%observation.apparently from the graph , we observe that both methods are
%%equally accurate since their roots overlap