function green = Banda_g(imagem)
  
  verde = imagem(:, :, 2);
  matriz_nula = zeros( size(imagem,1), size(imagem,2));
  green = cat(3,matriz_nula,verde,matriz_nula);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Comentários%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  verde está capturando a matriz do segundo plano referente a imagem(que é o verde de RGB)                    %  
% zeros() está preenchendo a matriz com zeros em sua dimensão                                                  %
% é atribuido a green a concatenação da dimensão (3) nas dos três planos. Resultando em uma banda de cor verde %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%