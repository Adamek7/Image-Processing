function data_filtered = bilateral_local(data, local_window, wsp_ro)


Nx = size(data,2);
Ncy = ceil(local_window(1)/2);
Ncx = ceil(local_window(2)/2);

h = fspecial('gaussian', local_window, 25);

for i = 1:Nx
    patch = reshape(data(:, i), local_window);
    
    [rows, cols] = find(patch == patch);
    rows = reshape(rows, local_window);
    cols = reshape(cols, local_window);
%     dist = sqrt((Ncy - rows).^2 + (Ncx - cols).^2);
    
%     dist = dist .* h;
    y = abs(patch - patch(Ncy,Ncx));
    
    gamma = exp(((-1)*(y .* y))/(2*wsp_ro*wsp_ro));
    
    data_filtered(i) = sum(sum(h .* gamma .* patch)) / sum(sum(h .* gamma));
end



end

