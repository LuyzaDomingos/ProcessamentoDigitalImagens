function [vermelho,verde,azul,origem] = MultiplicativoBanda(imagem)
  
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
    
    banday = YUV(imagem);
    y = banday(:,:,1)*valbrilho;
    i = banday(:,:,2);
    q = banday(:,:,3);
    
    imagemY = cat(3,y,i,q);
    yiq = RGB(imagemY);
    
    
    
    figure
    imshow(origem);
    title('Brilho multiplicativo em todo a imagem');
    
    figure
    imshow(imagem);
    title('Imagem Original');
    
    figure
    imshow(vermelho);
    title("Brilho multiplicativo - red");
    
    figure
    imshow(verde);
    title('Brillho multiplicativo - green');
     
    figure
    imshow(azul);
    title('Brillho multiplicativo - azul');
    
    figure
    imshow(yiq);
    title('Brilho multiplicativo - BandaY');
    
    
  
  end