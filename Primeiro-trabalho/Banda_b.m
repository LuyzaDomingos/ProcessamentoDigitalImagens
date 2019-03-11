function blue = Banda_b(imagem)
  
  azul = imagem(:, :, 3);
  matriz_nula = zeros( size(imagem,1), size(imagem,2));
  blue = cat(3,matriz_nula,matriz_nula,azul); 
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Comentários%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  azul está capturando a matriz do terceiro plano referente a imagem(que é o azul do RGB)                    %  
% zeros() está preenchendo a matriz com zeros em sua dimensão                                                  %
% é atribuido a blue a concatenação da dimensão (3) dos três planos. Resultando em uma banda de cor azul       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%