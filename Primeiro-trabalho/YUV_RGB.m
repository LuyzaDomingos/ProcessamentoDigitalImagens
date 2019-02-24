function rgb  = YUV_RGB(imagem); %% O sistema YUV é 
  
    red = imagem(:,:,1);
    blue = imagem(:,:,2);
    green = imagem(:,:,3);
    
    Y = 0.299*red + 0.587*green + 0.144*blue;
        if(Y>235)
            Y=235;
          elseif(Y<16)
            Y=16;
         end  
    U = -0.147*red - 0.289*green + 0.436*blue;
          if(U>240)
            U=240;
           elseif(U<16)
             U=16;
          end
    V = 0.615*red  - 0.515*green - 0.1*blue;
          if(V>240)
            V=240;
           elseif(V<16)
             V=16;
          end
    yuv = cat(3,Y,U,V);
    
    y =  yuv(:,:,1);
    u =  yuv(:,:,2);
    v =  yuv(:,:,3);
    
    R = y + 1.140*v;
        if(R>255)
            R=255;
           elseif(R<0)
             R = 0;
          end
    G = y - 0.395*u - 0.581*v;
        if(G>255)
            G=255;
           elseif(G<0)
             G = 0;
          end
    B =y+ 2.032*u;
         if(B>255)
            B=255;
           elseif(B<0)
             B = 0;
          end
    rgb = cat(3,R,G,B);
    
    figure 
    imshow(imagem);
    title('Original');
    figure 
    imshow(imagem);
    title('YUV-RGB');
    
  end