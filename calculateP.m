function [P] = calculateP(R1,R2,R12)
    X = R12/(1+R1/R2);
    P = sqrt(R2^2 - X^2);
end