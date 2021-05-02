function x = IEM(N, StartTime, EndTime, InitialValue)
    %IEM - Explicit Euler Methods
    %
    % Syntax: x = IEM(N, StartTime, EndTime, InitialValue)
    %
    % 待求解的方程为 x'(t)=-2x(t)+sin(sqrt(t))
    % N 是分划个数
    % EndTime 是时间终值, StartTime 是时间初值
    % InitialValue 是方程初值
    
        h = (EndTime - StartTime) / N;
        t = StartTime : h : EndTime;
        x = zeros(1, N+1);
        x(1) = InitialValue;
        % Implicit Euler methods
        for i=1:N 
            x(i+1) = 1 / (1 + 2*h) * (x(i) + h*sin(sqrt(t(i+1))));
        end
        figure
        plot(t, x)
        % 输出 x(EndTime) 的值
        x = x(end);
    end