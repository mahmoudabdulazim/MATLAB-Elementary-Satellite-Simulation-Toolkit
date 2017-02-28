function [Lines] = drawLoS(Satellites,Pairs,h)
    Lines = [];
    for k = 1:size(Pairs,1) 
      R1 = Satellites(Pairs(k,1)).States.R;
      R2 = Satellites(Pairs(k,2)).States.R;
      flag = checkLoS(R1,R2);
      if flag
          Line  = [R1';R2'];
          Lines = [Lines animatedline(h,Line(:,1),Line(:,2),Line(:,3),'MaximumNumPoints',2,'Marker',randomizeMarker(k),'Color',randomizeColor(k))];
      end
    end
   drawnow;
end