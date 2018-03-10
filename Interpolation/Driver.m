function Driver(from, to, num_nodes, linear_points)

interpolated_function = @(x) 1./(1+x.^10);
if linear_points
    x = linspace(from, to, num_nodes);
else
    x = czebyszew(num_nodes);
end
%x = linspace(from, to, num_nodes);
y = interpolated_function(x);
polynomialL = Lagrange(x, y);
polynomialN = Newton(x, y);
plot_points = 1000;
xx = linspace(from, to, plot_points);
yy = interpolated_function(xx);
plot(xx, yy, 'g');
hold on;
plot_polynomial(xx, polynomialL, 'b');
hold on;
plot_polynomial(xx, polynomialN, 'r');