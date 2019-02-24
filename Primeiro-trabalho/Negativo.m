function [vermelho,verde,azul,negativo] = Negativo(imagem) % função que retorna mais de um elemento -> [...]
  
          
    vermelho = Neg(Banda_r(imagem)); 
    verde = Neg(Banda_g(imagem));
    azul = Neg(Banda_b(imagem));
    negativo = Neg(imagem);
    
    
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
    imshow(imagem);
    title('Imagem Original');
    
    figure
    imshow(negativo);
    title("Imagem Negativa");
     
end  

%%%%%%%%%%%%Comentários%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Programa que exibe o negativo das bandas e da imagem original              %
% E para isso usa as funções específicas Neg(imagem) e Neg(Bandas_x(imagem)).%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
