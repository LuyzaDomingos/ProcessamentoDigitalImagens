function [vermelho,verde,azul] = Limiarizacao(imagem)
  
  
  choice = input('Escolha a limiarização que deseja vizualizar : 1-Red   2-Green  3-Blue ')
  
  switch choice
    case 1  
%%Limiarização da Banda Red

    valorlimiar = input('Defina a quantidade de limiarização para a imagem : ');
    red_imagem = imagem;
    [m n c] = size(imagem);
      for i=1:m
        for j=1:n
          pixel = imagem(i,j);
          if(pixel < valorlimiar)
            red_imagem(i,j,1) = 0; %põe zero a banda vermelha da imagem
          else
            red_imagem(i,j,1) = 255; %põe 255 a banda vermelha da imagem
          endif
        endfor  
       endfor
       
    vermelho = red_imagem;
    figure;imshow(imagem);title('Imagem original');
    figure;imshow(vermelho);title('Imagem Limiarizada - Banda Red');
      
    case 2  
%%Limiarização da Banda Green 
    
    valorlimiar = input('Defina a quantidade de limiarização para a imagem : ');
    green_imagem = imagem;
    [m n c] = size(imagem);
      
      for i=1:m
        for j=1:n
          pixel = imagem(i,j);
          if(pixel < valorlimiar)
            green_imagem(i,j,2) = 0;
          else
            green_imagem(i,j,2) = 255;
          endif
        endfor  
       endfor
    verde = green_imagem;
    figure;imshow(imagem);title('Imagem original');
    figure;imshow(verde);title('Imagem Limiarizada - Banda Green');

 
    case 3
%%Limiarização da Banda Blue
    valorlimiar = input('Defina a quantidade de limiarização para a imagem : ');
    blue_imagem = imagem;
    [m n c] = size(imagem); %lina,coluna,quantidade de bandas
      
      for i=1:m
        for j=1:n
          pixel = imagem(i,j);
          if(pixel < valorlimiar)
            blue_imagem(i,j,3) = 0;
          else
            blue_imagem(i,j,3) = 255;
          endif
        endfor  
       endfor
    azul = blue_imagem;
    figure;imshow(imagem);title('Imagem original');
    figure;imshow(azul);title('Imagem Limiarizada - Banda Blue');
   
   
      

  
  endswitch
  endfunction
  
  