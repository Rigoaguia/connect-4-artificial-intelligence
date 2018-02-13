function [ total ] = find_diagonal_streak( Board, row, col, streak )
        
%         Search diagonal streak starting at index [row][col] in the grid
%         It check positive and negative slope
%         :param row: row the grid
%         :param col: column of the grid
%         :param grid: a grid of connect four
%         :param streak: number of "color" consecutive
%         :return total: number of streaks founded
%         """
        total = 0;
        % check for diagonals with positive slope
        consecutive_count = 1;
        if (row + streak-1  <= 6) && (col + streak-1 <= 7),
            for i=1:streak-1,
                if Board(row,col) == Board(row + i,col + i),
                    consecutive_count = consecutive_count + 1;
                else
                    break;
                end
            end
        end

        if consecutive_count == streak,
            total = total + 1;
        end

        % check for diagonals with negative slope
        consecutive_count = 1;
        if (row - streak  >= 0) &&  (col + streak -1 <= 7),
            for i=1:streak -1,
                if Board(row,col) == Board(row - i,col + i),
                    consecutive_count = consecutive_count + 1;
                else
                    break;
                end
            end
        end

        if consecutive_count == streak,
            total = total + 1;
        end

        

end

 