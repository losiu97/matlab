function derivatives_driver()
%     funct = @(x, y) 3 * x * y^2;
%     [X N] = adam_bashforth(funct, 1, 0.5, 0.1, 4, 3)
    funct = @(x, y) -2*pi*exp(-x)*sin(2*pi*x) - y;
    comp_funct = @(x) exp(-x).*cos(2*pi*x);
    [X N] = heune_met(funct, 0, 1, 0.001, 10000);
    figure
    subplot(2,1,1)
    plot(X, N)
    subplot(2,1,2)
    Y = comp_funct(X(1:end));
    plot(X, Y)
    
    calc_error = max(abs(Y - N))
end