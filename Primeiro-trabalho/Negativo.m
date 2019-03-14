function [vermelho,verde,azul,negativo,yiq_imagem] = Negativo(imagem) % função que retorna mais de um elemento -> [...]
  
    imagem_nor = Normaliza(imagem);
    imagem_yiq = rgb2yiq(imagem_nor);

    vermelho = cat(3,Neg(MonoR(imagem)),MonoG(imagem),MonoB(imagem));
    verde = cat(3,MonoR(imagem),Neg(MonoG(imagem)),MonoB(imagem)); 
    azul = cat(3,MonoR(imagem),MonoG(imagem),Neg(MonoB(imagem)));
    yiq_imagem = cat(3,imcomplement(imagem_yiq(:,:,1)),imagem_yiq(:,:,2),imagem_yiq(:,:,3));
    negativo = Neg(imagem);
    
    figure;imshow(imagem);title('Imagem Original');
    figure;imshow(negativo);title("Imagem Negativa");
    
    figure;imshow(vermelho);title('negativo - Red');
     
    figure;imshow(azul);title('negativo - Blue');  
    figure;imshow(verde);title('negativo - Green');
    figure;imshow(yiq2rgb(yiq_imagem));title('negativo - BandaY');  
     
endfunction  

%%%%%%%%%%%%Comentários%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Programa que exibe o negativo das bandas                                   %
%OBS 1: tem que utilizar a banda monocrómatica ou BandaY                     %
%OBS 2: função imcomplement() - do pacote image - sendo usada temporariamente %  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

