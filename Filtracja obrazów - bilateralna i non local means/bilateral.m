function data_filtered = bilateral(data, local_window, wsp_ro)

FUNCTION = @(data_, local_window_, wsp_ro_)bilateral_local(data_, local_window_, wsp_ro);

data_filtered = colfilt(data, local_window, 'sliding', FUNCTION, local_window);


end