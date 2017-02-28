function [W] = rotMatZ(V,phi)
    
    Rot3 = [cosd(phi) -sind(phi) 0; sind(phi) cosd(phi) 0; 0 0 1];
    W = Rot3 * V;
end