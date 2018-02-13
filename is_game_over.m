% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2016/2
%
% Função Octave/MATLAB que verifica se o jogo acabou ou não.
%
% author: raonifst at gmail dot com

function [ over ] = is_game_over( Board )
    
    % O jogo não acabou
    over = 0;
    
    % O primeiro jogador ganhou
    if find_streak(Board, 1, 4) > 0,
        over = 1;
    end
    
    % O segundo jogador ganhou
    if  find_streak(Board, 2, 4) > 0,   
        over = 2;
    end
    
    % Empate - não há mais posições livres
    if size(find(Board == 0), 1) == 0,
        over = 3;
    end

end

