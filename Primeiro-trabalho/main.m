

%leitura das imagens
imagem_1 = imread('flor.jpg');
imagem_2 = imread('man.png'); 
imagem_3 = imread('arara.png');


imagem_1 = uint8(imagem_1);
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
  disp("6 - Limiarização\n");
%  disp("7 - Filtros - Média e Sobel");
%  disp("8 - Filtro da Mediana");
  valor = input('Escolha uma opcao entre 0 e 6 : ');
  
  switch valor
    case 0
      break;
    case 1
      imagem_1 = Normaliza(imagem_1); % normaliza a imagem
      imagemyiq = rgb2yiq(imagem_1);
      imagemrgb = yiq2rgb(imagemyiq);
      
      figure;imshow(imagem_1);title('Imagem Original');    
      figure;imshow(imagemyiq);title('imagem yiq');
      figure;imshow(imagemrgb);title('rgb');
      
    case 2
      Bandas(imagem_2);     
    case 3
      Negativo(imagem_2);
    case 4
      AditivoBanda(imagem_2);
    case 5
      MultiplicativoBanda(imagem_2);  
      case 6
      Limiarizacao(imagem_3);
      
  endswitch    

  endwhile
  
















