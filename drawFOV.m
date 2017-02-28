function [FOV] = drawFOV(Satellite,h,GST)
   [x,y,z] = cylinder([1 0]);
   FOV = surface(h,x*6400,y*6380,z*norm(Satellite.States.R));
   set(FOV,'FaceAlpha',0.1);
   rotate(FOV,[0 0 1],Satellite.States.Longitude,[0 0 0])
   rotate(FOV,rotMatZ([0; 1; 0],Satellite.States.Longitude + GST)',Satellite.States.Lattitude,[0 0 0]);
end