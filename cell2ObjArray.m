function [ObjArray] = cell2ObjArray(X)
    ObjArray = [];
   for k = 1:length(X)
      ObjArray = [ObjArray; X{k}]; 
   end
end