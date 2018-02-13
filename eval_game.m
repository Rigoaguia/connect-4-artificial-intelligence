% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2016/2
%
% Função Octave/MATLAB que implementa 
%
% author: raonifst at gmail dot com


function [ score ] = eval_game(Board, depth, player)
    
    v = [1 10 100 1000]; %vetor de pesos para streaks - 1  2  3  4
    p1 = zeros(1,4);
    p2 = zeros(1,4);
    
    for i=1:4
         p1(1,i) = find_streak(Board,player,i);% qt de streaks 1,2,3,4 do jogador
         p2(1,i) = find_streak(Board,opposite_player(player),i);% qt de streaks 1,2,3,4 do oponente
    end
    
    s1 = dot(v, p1);% produto escalar v e p1
    s2 = dot(v,p2);
    
    cp1 = columnplayer(Board,player); %pondera as colunas
    cp2 = columnplayer(Board,opposite_player(player));
    
    score = ((s1 - s2) + (cp1 - cp2));
    
end
%  Board = [0     0     0     0     0     0     0
%      1     1     0     0     0     0     0
%      0     0     0     0     0     0     0
%      0     0     0     0     0     0     0
%      0     1     0     0     0     0     0
%      1     1     1     1     0     0     0] 
%  
% 
% p1 = zeros(1,4)
%     for i=1:4
%          p1(1,i) = find_streak(Board,1,i);
%     end
%     p1

   