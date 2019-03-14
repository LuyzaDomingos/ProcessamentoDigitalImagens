function [vermelho,verde,azul,origem,imagemY] = AditivoBanda(imagem)
  
  valbrilho = input('Defina a quantidade de brilho aditivo : ');
  
   R = MonoR(imagem) + valbrilho;
        if(R>255)
            R=255;
           elseif(R<0)
             R = 0;
          end
    vermelho = cat(3,R,MonoG(imagem),MonoB(imagem)); 
    
    G = MonoG(imagem) + valbrilho;
        if(G>255)
            G=255;
           elseif(G<0)
             G = 0;
          end
    verde = cat(3,MonoR(imagem),G,MonoB(imagem));
    
    B = MonoB(imagem) + valbrilho;
        if(B>255)
            B=255;
           elseif(B<0)
             B = 0;
          end
    azul = cat(3,MonoR(imagem),MonoG(imagem),B);
    
    origem  =  imagem+valbrilho;
    
    imagem_normalizada = Normaliza(imagem);
    imagem_yiq = rgb2yiq(imagem_normalizada);
     
    imagemY = cat(3,imagem_yiq(:,:,1)+valbrilho, imagem_yiq(:,:,2), imagem_yiq(:,:,3));
    
    
    
    figure;imshow(origem);title('Brilho aditivo em todo a imagem');
    
    figure;imshow(imagem);title('Imagem Original');
    
    figure;imshow(vermelho);title("Brilho aditivo - red");
    
    figure;imshow(verde);title('Brillho aditivo - green');
     
    figure;imshow(azul);title('Brillho aditivo - azul');
    
    figure;imshow(yiq2rgb(imagemY));title('Brilho aditivo - BandaY');
    
  
  endfunction