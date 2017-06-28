function Z = CheckGrid(next_detect,sen_index,count,Grid)

if (Grid(next_detect) == 0)
    
    count= count+1;
    %display(count);
    if(rem(count,2) == 0)
        Z(sen_index) = rand;
    end 
end

end

