clear;clc;
intcon = 1:14;
f = -[48.7, 52.0, 61.3, 72.0, 48.7, 52.0, 64.0 48.7, 52.0, 61.3, 72.0, 48.7, 52.0, 64.0];
a = [48.7, 52.0, 61.3, 72.0, 48.7, 52.0, 64.0 0 0 0 0 0 0 0; 
    0 0 0 0 0 0 0 48.7, 52.0, 61.3, 72.0, 48.7, 52.0, 64.0; 
    1 0 0 0 0 0 0 1 0 0 0 0 0 0;
    0 1 0 0 0 0 0 0 1 0 0 0 0 0;
    0 0 1 0 0 0 0 0 0 1 0 0 0 0;
    0 0 0 1 0 0 0 0 0 0 1 0 0 0; 
    0 0 0 0 1 0 0 0 0 0 0 1 0 0; 
    0 0 0 0 0 1 0 0 0 0 0 0 1 0;
    0 0 0 0 0 0 1 0 0 0 0 0 0 1;
    2 3 1 0.5 4 2 1 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 2 3 1 0.5 4 2 1;
    0 0 0 0 48.7, 52.0, 64.0 0 0 0 0 48.7, 52.0, 64.0;];
b = [1020; 1020; 8; 7; 9; 6; 6; 4; 8; 40; 40; 302.7];
lb = zeros(14,1);
ub = [8; 7; 9; 6; 6; 4; 8; 8; 7; 9; 6; 6; 4; 8;];
[x,fval] = intlinprog(f,intcon, a, b,[], [], lb, ub);
result = 1020 + 1020 + fval;
x
fprintf('最少剩余空间总数： %f cm \n',result);
fprintf('A最少剩余空间总数： %f cm \n',1020 + f(1:7) * x(1:7));
fprintf('B最少剩余空间总数： %f cm \n',1020 + f(8:14) * x(8:14));
