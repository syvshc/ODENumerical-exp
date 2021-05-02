function x = ERK(f, N, StartTime, EndTime, InitialValue, Index)
%ERK - Explicit Runge-Kutta Methods
%
% Syntax: x = ERK(f, N, StartTime, EndTime, InitialValue, Index)
%
% 待求解的方程为 x'(t)=f(x, t) 
% N 是分划个数
% EndTime 是时间终值, StartTime 是时间初值
% InitialValue 是方程初值
% Index 是 RK 法的分类, 'Kutta': 3-stage, 'Classic': 4-stage

    Step = (EndTime - StartTime) / N;
    Time = StartTime : Step : EndTime;
    x = zeros(N, 1);
    [A,b,c] =  Method(Index);
    Stage = length(b);
    k = zeros(Stage, 1);
    x(1) = InitialValue;
    
    for n = 1 : N
        for i = 1 : Stage
            k(i) = f(x(n) + Step * A(i, :) * k, Time(n) + c(i) * Step);
        end
        x(n+1) = x(n) + Step * b' * k;
    end
    
    plot(Time, x);

    x = x(end);
    