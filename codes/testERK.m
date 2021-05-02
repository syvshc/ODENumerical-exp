% testERK.m
% test the convergence order of ERK
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
% 使用 x 存储 3-stage ERK
x = zeros(1, 5);
% 使用 y 存储 4-stage ERK
y = zeros(1, 5);

for i = 1:5
    N = 2.^i * 100;
    x(i) = ERK(f, N, StartTime, EndTime, InitialValue, 'Kutta');
    y(i) = ERK(f, N, StartTime, EndTime, InitialValue, 'Classic');
end

% 求全局截断误差
Errorx = abs(x - Error)
Errory = abs(y-Error)

% 验证收敛阶
GEx = log2(Errorx(1:end-1)./Errorx(2:end))
GEy = log2(Errory(1:end-1)./Errory(2:end))