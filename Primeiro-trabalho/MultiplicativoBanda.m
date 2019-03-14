function [vermelho,verde,azul,origem,imagemBandaY] = MultiplicativoBanda(imagem)
  
  valbrilho = input('Defina a quantidade de brilho multiplicativo : ');
  
   R = MonoR(imagem) * valbrilho;
        if(R>255)
            R=255;
           elseif(R<0)
             R = 0;
          end
    vermelho = cat(3,R,MonoG(imagem),MonoB(imagem)); 
    
    G = MonoG(imagem) * valbrilho;
        if(G>255)
            G=255;
           elseif(G<0)
             G = 0;
          end
    verde = cat(3,MonoR(imagem),G,MonoB(imagem));
    
    B = MonoB(imagem) * valbrilho;
        if(B>255)
            B=255;
           elseif(B<0)
             B = 0;
          end
    azul = cat(3,MonoR(imagem),MonoG(imagem),B);
    
    origem  =  imagem*valbrilho;
    
    imagem_normalizada = Normaliza(imagem);
    imagem_yiq = rgb2yiq(imagem_normalizada);
    bandaY = imagem_yiq(:,:,1); 
     
    imagemBandaY = cat(3,imagem_yiq(:,:,1)*valbrilho,imagem_yiq(:,:,2),imagem_yiq(:,:,3));
    
    
    
    figure;imshow(origem);title('Brilho multiplicativo - imagem completa');
    
    figure;imshow(imagem);title('Imagem Original');
    
    figure;imshow(vermelho);title("Brilho multiplicativo - red");
    
    figure;imshow(verde);title('Brillho multiplicativo - green');
     
    figure;imshow(azul);title('Brillho multiplicativo - azul');
    
    figure;imshow(yiq2rgb(imagemBandaY));title('Brilho multiplicativo - BandaY');
    
  
  endfunction