function h = RemovefromListbox(h, index,N)
    % ADDITEMTOLISTBOX - add a new items to the listbox
    % H = ADDITEMTOLISTBOX(H, STRING)
    % H listbox handle
    % STRING a new item to display
    oldstring = get(h, 'string');
    oldstring(index) = [];
    if ~isempty(oldstring)
        set(h,'string', oldstring);
        
        set(h,'value',N);
    else
        set(h,'string',{'Empty'},'Enable','off')
    end
end