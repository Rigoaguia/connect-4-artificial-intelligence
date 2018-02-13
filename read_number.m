% Universidade Federal de Mato Grosso
% Instituto de Engenharia
% Inteligência Artificial - 2016/2
%
% Função Octave/MATLAB que implementa 
%
% author: raonifst at gmail dot com


function [ num ] = read_number(  )
    
    num = str2double(input('Enter an integer (column): ','s'));
    while isnan(num) || fix(num) ~= num,
       num = str2double(input('Please enter an integer (column): ','s'));
    end

end

    
