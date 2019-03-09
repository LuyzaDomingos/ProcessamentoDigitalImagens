function [red,green,blue] = Bandas(imagem)
  
  vermelho = imagem( :, :,1);
  verde = imagem(:, :, 2);
  azul = imagem(:, :, 3);
  
  matriz_nula = zeros( size(imagem,1), size(imagem,2));
  red = cat(3, vermelho,matriz_nula,matriz_nula);
  green = cat(3,matriz_nula,verde,matriz_nula);
  blue = cat(3,matriz_nula,matriz_nula,azul);
  
  figure
  imshow(imagem);
  title('Imagem Original');
  
  figure
  imshow(red);
  title('Banda-red');
  
  figure
  imshow(green);
  title('Banda- green');
  
  figure
  imshow(blue);
  title('Banda-blue');
  end