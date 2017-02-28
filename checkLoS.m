function [flag] = checkLoS(R1,R2)
   R12 = R1-R2;
   P   = calculateP(norm(R1),norm(R2),(norm(R12)));
   if P > 7000
       flag = true;
   else
       flag = false;
   end
end