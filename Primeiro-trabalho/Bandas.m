function [monoR,monoG,monoB,i,vermelho,verde,azul,m] = Bandas(imagem) % função que retorna mais de um elemento -> [...]
  
  
  escolha = input('Escolha a banda que deseja exibir: 1 - Monocrómatica  2 - Coloridas ');
  
  figure;imshow(imagem);title('Original');
  
  switch escolha 
    case 1
%bandas monocrómaticas
      monoR = MonoR(imagem);
      monoG = MonoG(imagem);
      monoB = MonoB(imagem);
      figure;imshow(monoR);title('Banda Monocrómatica - vermelha');
      figure;imshow(monoG);title('Banda Monocrómatica - verde');
      figure;imshow(monoB);title('Banda Monocrómatica - azul');
      i = cat(3,monoR,monoG,monoB);
      figure;imshow(i);title('todas monos juntas');
      
    case 2
%bandas coloridas
      vermelho = Banda_r(imagem);
      verde = Banda_g(imagem);
      azul = Banda_b(imagem);          
      figure;imshow(vermelho);title('Banda-red');
      figure;imshow(verde);title('Banda- green');
      figure;imshow(azul);title('Banda-blue')
      m = cat(3,vermelho,verde,azul);
      figure;imshow(m);title('tudo junto');
 endswitch  

 
endfunction

  
  
%%%%%%%%%%%%Comentários%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Programa que exibe as bandas da  imagem.            %   
% E para isso usa as funções específicas Bandas_x(imagem). %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

