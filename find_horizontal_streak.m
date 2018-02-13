function [ n_streak ] = find_horizontal_streak(Board, row, col, streak)

        
%         Search horizontal streak starting at index [row][col] in the grid
%         :param row: row the grid
%         :param col: column of the grid
%         :param grid: a grid of connect four
%         :param streak: number of "color" consecutive
%         :return: 0: no streak found, 1: streak founded
%         """
        consecutive_count = 1;
        n_streak = 0;
        if col + streak -1  <= 7,            
            for i=1:streak-1,
                if Board(row, col) == Board(row, col + i),
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

