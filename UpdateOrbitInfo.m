function [] = UpdateOrbitInfo(Satellite,handles)
    Parameters = [Satellite.Orbit.rp;Satellite.Orbit.ra;Satellite.Orbit.Period;Satellite.Orbit.e; ...
                    Satellite.Orbit.b;Satellite.Orbit.AoP;Satellite.Orbit.a; ...
                    Satellite.Orbit.i;Satellite.Orbit.AoA];
    Handles    = [handles.Perigee;handles.Apogee;handles.Period;handles.Eccentricity;handles.MinorAxis; ...
                    handles.AoP;handles.MajorAxis;handles.Inclination;handles.AoA];
    Letter     = 'PAtebwaiW';
    for k = 1:length(Parameters)
        text = sprintf('%.2f',Parameters(k));
        String = [Letter(k),' = ',text];
        set(Handles(k),'String',String);
    end
end