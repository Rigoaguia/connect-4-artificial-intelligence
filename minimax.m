function [ best_val, best_pos ] = minimax( Board, depth, player )
%     Minimax helper function: Return the minimax value of a particular board,
%     given a particular depth to estimate to
%    

    debug = 0;

    best_val = nan;
    best_pos = 0;
    
    if is_terminal(Board, depth),
        best_val =  eval_game(Board, depth, player);
    else
        
            
        for i=1:7, 
            [new_board, valid] = do_move( Board, i, player);
            if valid == 1,
                val = -1*minimax(new_board, depth-1, opposite_player(player));
                if isnan(best_val) || val > best_val,
                    best_val = val;
                    best_pos = i;
                end
            end
        end
         
    end
    
    if debug == 1,
        fprintf('******************************************\n');
        fprintf('Profundidade: %d\nJogador: %d\nMelhor valor: %f\nMelhor Posicao: %f\n', depth, player, best_val, best_pos);

        %player
        %best_val
        %best_pos

       fprintf('******************************************\n');
    end

end

