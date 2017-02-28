function [color] = randomizeColor(index)
   String = 'rbymcg';
   if index <= 6
      color = String(index); 
   else
       if ~(rem(index,6) == 0)
            color = String(int8(rem(index,6)));
       else
           color = String(1);
       end
   end
end