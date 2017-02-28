function [GST] = calculateGST(GST0)
   GST = GST0 +  OmegaEarth*(60*10*180/pi);
   if GST > 360
      GST = GST - 360;
   end
end