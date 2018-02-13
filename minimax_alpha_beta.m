function [ best_val, best_pos ] = minimax_alpha_beta( Board, depth, player, alpha, beta,is_max)
%     Minimax helper function: Return the minimax value of a particular board,
%     given a particular depth to estimate to
%    
%best_val = 0;
%best_pos = randi(7);
%[ best_val, best_pos ] = minimax( Board, depth, player );
    
    if(is_terminal(Board,depth))
        best_val = eval_game(Board, depth, player); 
        return;
    end
    
    if(is_max)% jogador
        best_val = -Inf;
        for j=1:7
            [new_Board, valid] = do_move( Board, j, player);
            if valid == 1
                v = minimax_alpha_beta(new_Board, depth-1, player, alpha, beta,false);
                if(v > best_val)
                    best_val = v;
                    best_pos = j;
                end
                alpha = max(alpha,best_val);
                if(beta <= alpha)
                    return;
                end
            end        
        end
    else % oponente
        best_val = Inf;
        for j=1:7
            [new_Board, valid] = do_move( Board, j, opposite_player(player));
            if valid == 1
                v = minimax_alpha_beta(new_Board, depth-1, player, alpha, beta,true);
                if(v < best_val)
                    best_val = v;
                    best_pos = j;
                end
                beta = min(beta,best_val);
                if(beta <= alpha)
                    return;
                end
            end        
        end
    end
end