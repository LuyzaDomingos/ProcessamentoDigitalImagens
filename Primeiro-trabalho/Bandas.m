 peanuts
function [vermelho,verde,azul] = Bandas(imagem) % função que retorna mais de um elemento -> [...]
  
  vermelho = Banda_r(imagem);
  verde = Banda_g(imagem);
  azul = Banda_b(imagem);
      
  figure
  imshow(vermelho);
  title('Banda-red');
  figure
  imshow(verde);
  title('Banda- green');
  figure
  imshow(azul);
  title('Banda-blue');
  figure
  imshow(imagem);
  title('Original');
 
  end

  
  
%%%%%%%%%%%%Comentários%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Programa que exibe as bandas da  imagem.            %   
% E para isso usa as funções específicas Bandas_x(imagem). %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 master
