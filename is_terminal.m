function [ r ] = is_terminal( Board, depth )

%     Generic terminal state check, true when maximum depth is reached or
%     the game has ended.
%     """
    r =  depth <= 0 || is_game_over(Board);

end

