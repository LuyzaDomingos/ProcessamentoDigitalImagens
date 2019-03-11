function rgb = RGB(imagem)
  
 rgb = ntsc2rgb(imagem);
 
%    y =  imagem(:,:,1);
%    i =  imagem(:,:,2);
%    q =  imagem(:,:,3);
%    
%    R =  y + 0.956*i + 0.621*q;
%        if(R>255)
%            R=255;
%           elseif(R<0)
%             R = 0;
%          end
%    G = y - 0.272*i - 0.647*q;
%        if(G>255)
%            G=255;
%           elseif(G<0)
%             G = 0;
%          end
%    B = y - 1.106*i + 1.703*q;
%         if(B>255)
%            B=255;
%           elseif(B<0)
%             B = 0;
%          end
%          
%rgb = cat(3,R,G,B);
   
end