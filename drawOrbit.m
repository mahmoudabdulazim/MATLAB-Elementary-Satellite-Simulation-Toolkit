function [Orbit] = drawOrbit(Satellite,h)
    hold(h,'off');
    if ~isempty(Satellite.Orbit.Type)
        switch Satellite.Orbit.Type
            case 'Elliptic'
                R = zeros(3,720);
                for nu = 0:0.5:360
                    i = int16(nu*2+1);
                    r_PQW  = [Satellite.Orbit.p*cosd(nu)/(1+Satellite.Orbit.e*cosd(nu));Satellite.Orbit.p*sind(nu)/(1+Satellite.Orbit.e*cosd(nu));0];
                    R(:,i) = PQWtoIJK(r_PQW,Satellite.Orbit.AoP,Satellite.Orbit.i,Satellite.Orbit.AoA);
                end
                Orbit = animatedline(h,R(1,:),R(2,:),R(3,:),'Color',randomizeColor(randi(6)));
                SetProperties(h);
                drawnow
            case 'Circular'
                R = zeros(3,720);
                for nu = 0:0.5:360
                    i = int16(nu*2+1);
                    r_PQW  = [Satellite.Orbit.p*cosd(nu)/(1+Satellite.Orbit.e*cosd(nu));Satellite.Orbit.p*sind(nu)/(1+Satellite.Orbit.e*cosd(nu));0];
                    R(:,i) = PQWtoIJK(r_PQW,Satellite.Orbit.AoP,Satellite.Orbit.i,Satellite.Orbit.AoA);
                end
                Orbit = animatedline(h,R(1,:),R(2,:),R(3,:));
                SetProperties(h);
                drawnow
            case 'Hyperbolic'
                R = [];
                phi = atand(sqrt(Satellite.Orbit.e^2 - 1));
                for nu = -phi-40:0.5:phi+40
                    r_PQW  = [Satellite.Orbit.p*cosd(nu)/(1+Satellite.Orbit.e*cosd(nu));Satellite.Orbit.p*sind(nu)/(1+Satellite.Orbit.e*cosd(nu));0];
                    R      = [R PQWtoIJK(r_PQW,Satellite.Orbit.AoP,Satellite.Orbit.i,Satellite.Orbit.AoA)];
                end
                Orbit = animatedline(h,R(1,:),R(2,:),R(3,:));
                SetProperties(h);
                drawnow
            case 'Parabolic'
                R = zeros(3,400);
                i = 1;
                for nu = -100:0.5:100
                    r_PQW  = [Satellite.Orbit.p*cosd(nu)/(1+Satellite.Orbit.e*cosd(nu));Satellite.Orbit.p*sind(nu)/(1+Satellite.Orbit.e*cosd(nu));0];
                    R(:,i) = PQWtoIJK(r_PQW,Satellite.Orbit.AoP,Satellite.Orbit.i,Satellite.Orbit.AoA);
                    i = i+1;
                end
                Orbit = animatedline(h,R(1,:),R(2,:),R(3,:));
                SetProperties(h);
                drawnow
        end
    end
    hold(h,'on');
end