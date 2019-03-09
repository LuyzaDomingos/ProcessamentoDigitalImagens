function negativo = Negativo(imagem)
  
  negativo =255 - imagem;
  %negativo = imcomplement(imagem); função imcomplement é do octave. E computa o negativo da imagem
  
  figure
  imshow(imagem);
  title('Imagem Original');
  
  figure
  imshow(negativo);
  title("Imagem Negativa");
end  