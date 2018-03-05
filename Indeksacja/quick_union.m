function ret_tab = quick_union(tab,start,ending)

id_start = start;
id_ending = ending;
ret_tab = tab;

if id_start > id_ending
    id_start = ending;
    id_ending = start;
end

ret_tab(quick_union_root(tab,id_start)) = quick_union_root(tab,id_ending);

end

