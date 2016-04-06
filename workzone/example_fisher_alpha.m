% 
S = 5;
N = 20;
        Xs = [0.01: 0.01: 0.99];
        fXs = (Xs-1)./Xs .* log(1-Xs)  -S/N;
        myplot(Xs, fXs, 'L'); hold on
hline(0, 1);
        fX = (X-1)./X .* log(1-X)  -S/N;
        dfX = log(1-X) ./ (X.^2) + (1/X);
        Xs2 = [0.01 0.5 0.99];
        tang = (Xs2-X)*dfX + fX; 
myplot(Xs2, tang,'L', 7);
        Xt = X - fX/dfX;
%%
fisher_alpha(10,5)
%%
fisher_alpha(20,10)
%%
fisher_alpha(20,5)