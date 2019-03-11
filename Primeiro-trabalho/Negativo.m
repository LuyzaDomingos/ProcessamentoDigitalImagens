peanuts
function [vermelho,verde,azul,negativo,yiq] = Negativo(imagem) % função que retorna mais de um elemento -> [...]
  
    imagemyiq = YUV(imagem);
    
    y =  imagemyiq(:,:,1);
    i =  imagemyiq(:,:,2);
    q =  imagemyiq(:,:,3);

    vermelho = cat(3,Neg(MonoR(imagem)),MonoG(imagem),MonoB(imagem));
    verde = cat(3,MonoR(imagem),Neg(MonoG(imagem)),MonoB(imagem)); 
    azul = cat(3,MonoR(imagem),MonoG(imagem),Neg(MonoB(imagem)));
    BandaY = cat(3,Neg(y),i,q);
    yiq = RGB(BandaY);
    negativo = Neg(imagem);
    
    figure
    imshow(imagem);
    title('Imagem Original');
    
    figure
    imshow(negativo);
    title("Imagem Negativa");
    
    figure
    imshow(vermelho);
    title('negativo - red');
     
    figure
    imshow(azul);
    title('negativo - blue');
      
    figure
    imshow(verde);
    title('negativo - green');
      
    figure
    imshow(BandaY);
    title('negativo - Banda Y');
    
    
     
end  

%%%%%%%%%%%%Comentários%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Programa que exibe o negativo das bandas e da imagem original              %
% E para isso usa as funções específicas Neg(imagem) e Neg(Bandas_x(imagem)).%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 master
