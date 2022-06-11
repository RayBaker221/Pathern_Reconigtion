clc
clear all
close all
warning off all

a=imread('IMAG120.BMP');
figure(1)
subplot(1,3,1)
imshow(a)
title('Original')
%{
b=rgb2gray(a);
subplot(1,3,2)
imshow(b)
title('Grises')
%}
c=im2bw(a);
subplot(1,3,3)
imshow(c)
hold on
title('Binario')

%Iniciando el proceso de identificación de los objetos

objetos=regionprops(c,'Perimeter','Area','Centroid','BoundingBox')
fprintf('LA IMAGEN CONTIENE %d OBJETOS \n',length(objetos))


disp('Proceso terminado')
