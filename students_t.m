function [ t ] = students_t( nu, P )
%Students T Distribution : Calculates students t for a given degrees of
%freedom and confidence.

error = Inf;
x = 1e-3;
while (error > 1e-6)
    x = x + 1e-3;
    p = tcdf(x, nu) - tcdf(-x, nu);
    error = P - p;
end

t = x;
end

