
% função que pondera as colunas

function [ cp ] = columnplayer(Board,player)

    peso = [-2 -1 0 1 0 -1 -2]; % peso para cada coluna 1,2,...,7,respectivamente.
    co = zeros(1,7);

    [~,p] = find(Board == player);
    
    for i=1:7
        co(1,i) = sum(p == i);
    end
    cp = dot(co, peso);
end


%  Board = [0     0     0     0     0     0     0
%           1     1     0     0     0     0     0
%           0     0     0     0     0     0     1
%           0     0     0     1    0     0     1
%           0     1     0     1     0     0     1
%           1     1     1     1     1     1     1] ;
% cp