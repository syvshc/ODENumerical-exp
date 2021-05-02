% testEEM.m
% test the convergence order of EEM
clear

f = @(x,t) (-2*x + sin(sqrt(t)));

StartTime = 0;
EndTime = 10;
InitialValue = 1;

%%%%% 求真解
syms s;
F= @(s) exp(2*s).*sin(sqrt(s));
% 定义积分函数
y1 = int(F, s, StartTime, EndTime);
Integral = double(y1);
% Y 为 EndTime 点处的真实值
Y = (Integral + InitialValue .* exp(2*StartTime)).*exp(-2*EndTime);
%%%%% 求真解 end

Error = ones(1, 5) * Y;
x = zeros(1, 5);

for i = 1:5
    N = 2.^i * 100;
    x(i) = EEM(f, N, StartTime, EndTime, InitialValue)
end

% 求全局截断误差
Error = abs(x - Error)

% 验证收敛阶
GE = log2(Error(1:end-1)./Error(2:end))