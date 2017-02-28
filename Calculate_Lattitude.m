function [Lattitude] = Calculate_Lattitude(AoP,nu,i)
    Lattitude = -1*asind(sind(i)*sind(AoP+nu));
end