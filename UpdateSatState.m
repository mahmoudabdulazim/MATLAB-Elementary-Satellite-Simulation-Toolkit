function []=UpdateSatState(Satellite,h)
    States = [Satellite.States.nu;Satellite.States.Lattitude;Satellite.States.Longitude;norm(Satellite.States.R)-6387;norm(Satellite.States.V)];
    handles= [h.Anomaly;h.Lattitude;h.Longitude;h.Altitude;h.Velocity];
    Letter = 'nFlLV';
    for k = 1:length(States)
        text = sprintf('%.1f',States(k));
        String = [Letter(k),' = ', text];
        set(handles(k),'String',String);
    end
end