
imagem = imread('flor.jpg');
imagem_2 = imread('man.png'); 


imagem = uint8(imagem);
imagem_2 = uint8(imagem_2); 

while true
  disp("\n\n");
  disp("Menu");
  disp("0 - Encerrar execução")
  disp("1 - Conversao de imagem (RGB-YIQ_RGB)");
  disp("2 - Banda individuais(RGB)");
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
      YUV_RGB(imagem);
    case 2
      Bandas(imagem);     
    case 3
      Negativo(imagem);
      
  end    

  end
  






