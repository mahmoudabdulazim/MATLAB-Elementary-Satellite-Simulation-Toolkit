function [marker] = randomizeMarker(index)
   String = 'o+*xsd^v<>ph';
   if index <= 12
      marker = String(index); 
   else
       if rem(index,12)== 0
           marker = String(1);
       else
           marker = String(int8(rem(index,12)));
       end
   end 
end