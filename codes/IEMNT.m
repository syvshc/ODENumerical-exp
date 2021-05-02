function x = IEMNT(N, StartTime, EndTime, InitialValue)
    %IEMNT - Explicit Euler Methods
    %
    % Syntax: x = IEMNT(N, StartTime, EndTime, InitialValue)
    %
    % 待求解的方程为 x'(t)=-2x(t)+sin(sqrt(t))
    % N 是分划个数
    % EndTime 是时间终值, StartTime 是时间初值
    % InitialValue 是方程初值
    
        h = (EndTime - StartTime) / N;
        t = StartTime : h : EndTime;
        x = zeros(1, N+1);
        x(1) = InitialValue;

        dg = @(x, t) 1 + h;
        f = @(x, t) -2*x + sin(sqrt(t));
        % Implicit Euler methods
        for i = 1 : N
            y = x(i);
            for j = 1 : 10 
                y = y - 1/dg(y, t(i+1)) * (y - h*f(y, t(i+1)) - x(i));
            end 
            x(i+1) = y;    
        end
        
        figure
        plot(t, x)
        % 输出 x(EndTime) 的值
        x = x(end);
    end