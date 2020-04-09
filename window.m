function [ w ] = window( N, type )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

    w = zeros(1,N);
    
    if type == 'tri'
        for i = 0:N-1
            w(i+1) = 1 - abs(2*i - N + 1)/(N - 1);
        end
    elseif type == 'ham'
        for i = 0:N-1
            w(i+1) = 0.54 - 0.46*cos((2*pi*i)/(N - 1));
        end
    elseif type == 'han'
        for i = 0:N-1
            w(i+1) = 0.5 - 0.5*cos((2*pi*i)/(N - 1));
        end
    end
end