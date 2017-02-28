function SetProperties(h)
    hold off
    set(h,'XTick',[],'YTick',[],'ZTick',[]);
    x = rotate3d(h);
    x.Enable = 'on';
%     zoom(h);
    camproj(h,'perspective')
    daspect(h,[1 1 1])
    hold on
end