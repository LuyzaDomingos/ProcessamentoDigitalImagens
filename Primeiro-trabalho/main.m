

imagem = imread('flor.jpg');
imagem_2 = imread('man.png'); 
imagem_3 = imread('arara.png');


imagem = uint8(imagem);
imagem_2 = uint8(imagem_2); 
imagem_3 = uint8(imagem_3);

while true
  disp("\n\n");
  disp("Menu");
  disp("0 - Encerrar execução")
  disp("1 - Conversao de imagem (RGB-YIQ_RGB)");
  disp("2 - Exibição das Bandas - Monocromática ou Colorida");
  disp("3 - Negativo da Imagem");
  disp("4 - Controle de bilho (aditivo)");
  disp("5 - Controle de brilho (multiplicativo)");
  disp("6 - Filtros - Média e Sobel");
  disp("7 - Filtro da Mediana");
  disp("8 - Limiarizacao");
  valor = input('Escolha uma opcao entre 0 e 8 : ');
  
  switch valor
    case 0
      break;
    case 1
      imagem = Normaliza(imagem); % normaliza a imagem
      imagemyiq = rgb2yiq(imagem);
      imagemrgb = yiq2rgb(imagemyiq);
          
      figure;imshow(imagemyiq);title('imagem yiq');
      figure;imshow(imagemrgb);title('rgb');
      
    case 2
      Bandas(imagem_2);     
    case 3
      Negativo(imagem_3);
    case 4
      AditivoBanda(imagem_2);
    case 5
      MultiplicativoBanda(imagem_2);  
      
  endswitch    

  endwhile
  
















