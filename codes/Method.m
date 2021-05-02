function [A,b,c] = Method(Index)

    switch Index
        case 'Kutta'
            A = [0,0,0;0.5,0,0;-1,2,0];
            b = [1/6,2/3,1/6]';
            c = [0,0.5,1]';            
        case 'Classic'
            A = [0,0,0,0;0.5,0,0,0;0,0.5,0,0;0,0,1,0];
            b = [1/6,2/6,2/6,1/6]';
            c = [0,0.5,0.5,1]';
    end
            
            
            
    
    
    
    