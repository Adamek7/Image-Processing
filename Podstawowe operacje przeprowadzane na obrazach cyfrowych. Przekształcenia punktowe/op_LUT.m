clearvars;
close all;
clc;

load funkcjeLUT;


figure('Name', 'kwadratowa', 'NumberTitle', 'off');
LUT('lena.bmp', kwadratowa);

figure('Name', 'log', 'NumberTitle', 'off');
LUT('lena.bmp', log);

figure('Name', 'odwlog', 'NumberTitle', 'off');
LUT('lena.bmp', odwlog);

figure('Name', 'odwrotna', 'NumberTitle', 'off');
LUT('lena.bmp', odwrotna);

figure('Name', 'pierwiastkowa', 'NumberTitle', 'off');
LUT('lena.bmp', pierwiastkowa);

figure('Name', 'pila', 'NumberTitle', 'off');
LUT('lena.bmp', pila);

figure('Name', 'wykladnicza', 'NumberTitle', 'off');
LUT('lena.bmp', wykladnicza);