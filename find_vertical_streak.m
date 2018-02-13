function [ n_streak ] = find_vertical_streak(Board, row, col, streak)
        
%         Search vertical streak starting at index [row][col] in the grid
%         :param row: row the grid
%         :param col: column of the grid
%         :param grid: a grid of connect four
%         :param streak: number of "color" consecutive
%         :return: 0: no streak found, 1: streak founded
%         """
        
        n_streak = 0;

        consecutive_count = 1;
        
        if row + streak-1  <= 6,
            for i=1:streak-1,
                if Board(row, col) == Board(row + i, col),
                    consecutive_count =  consecutive_count + 1;
                else
                    break;
                end
            end
        end

        if consecutive_count == streak,
            n_streak = 1;
        end

end

