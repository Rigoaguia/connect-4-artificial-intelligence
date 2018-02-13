
% função p/ plot

depth = 7;

for i=1:depth
    over = tournament(i);
    if(over == 1)
        p1 = plot(i,i,'xr','MarkerSize',8);
        hold on
    elseif(over == 2)
        p2 = plot(i,i,'ob','MarkerSize',8);
        hold on 
    end
            
       
end
hold off
axis([0 10 0 10]);
legend([p1 p2],{'Vitória CPU 1','Vitória CPU 2'},'Location','northwest','Orientation','vertical');
xlabel('Depth CP1');
ylabel('Depth CP2');