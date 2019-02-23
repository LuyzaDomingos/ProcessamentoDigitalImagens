function[YIQ,RGB] = RgbYiq(imagem) %[YIQ,RGB] porque a função mostra mais de uma saida
  YIQ = rgb2ntsc(imagem); %converte a imagem(rgb) para o sistema ntsc no qual é o usado o sistema YIQ
  RGB = ntsc2rgb(YIQ); 
  % figura no sistema de cor YIQ
  figure 
  imshow(YIQ);
  title('YIQ');
  % figura no sistema de cor RGB
  figure 
  imshow(RGB);
  title('RGB');
end