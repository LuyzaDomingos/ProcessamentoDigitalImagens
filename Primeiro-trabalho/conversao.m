function [Y] = Conversao(imagem)

imagem = imread('flor.jpg');
imagem = uint8(imagem);

imagem=double(imagem)/255; % normaliza a imagem

figure(1)
imshow(imagem);
title('Imagem Original');


b=rgb2yiq(imagem); % converte para YIQ

Y=b(:,:,1);

figure(2);imagesc(Y,[min(Y(:)) max(Y(:))]);title('Banda Y');colormap();truesize;


c=yiq2rgb(b); % converte para RGB

R=c(:,:,1);
G=c(:,:,2);
B=c(:,:,3);

c=c-min(c(:));c=c/max(c(:)); % problemas com o ponto flutuante...
figure(4);imagesc(c);title('Imagem recuperada');truesize;


