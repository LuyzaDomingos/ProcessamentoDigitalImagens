
imagem = imread('flor.jpg');
%imagem_2 = imread('Shapes.png');

imagem = uint8(imagem);
%imagem_2 = uint8(imagem_2);

valor = input('Escolha uma opcao entre 1 e 8 : \n\n');

switch valor
  case 1
  RgbYiq(imagem);
  case 2
  Bandas(imagem);
  case 3
    Negativo(imagem);
end


