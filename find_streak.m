function [ count ] = find_streak( Board, player, streak )
        
%         Search streaks of a color in the grid
%         :param grid: a grid of connect four
%         :param color: color of a player
%         :param streak: number of consecutive "color"
%         :return count: number of streaks founded
%         """
        count = 0;
        % for each box in the board...
        for i=1:6,
            for j=1:7,
                % ...that is of the color we're looking for...
                if Board(i,j) == player,
                    
                    %# check if a vertical streak starts at index [i][j] of the grid game
                    count = count + find_vertical_streak(Board, i, j, streak);

                    %# check if a horizontal streak starts at index [i][j] of the grid game
                    count = count + find_horizontal_streak(Board, i, j, streak);

                    %# check if a diagonal streak starts at index [i][j] of the grid game
                    count = count + find_diagonal_streak(Board, i, j, streak);
        
                end
            end
        end


end

