function funcao = RgbYiq(imagem)
  YIB = rgb2ntsc(imagem);
  RGB = ntsc2rgb(YIB);
  imshow(RGB);
end