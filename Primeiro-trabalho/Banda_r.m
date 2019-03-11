function red = Banda_r(imagem)
 
 
  vermelho = imagem( :, :,1);
  matriz_nula = zeros( size(imagem,1), size(imagem,2));
  red = cat(3, vermelho,matriz_nula,matriz_nula);
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Comentários%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  vermelho está capturando a matriz do primeiro plano referente a imagem(que é o vermelho de RGB)             % 
% zeros() está preenchendo a matriz com zeros em sua dimensão                                                  %
% é atribuido a red a concatenação da dimensão (3) dos três planos. Resultando em uma banda de cor vermelho     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%