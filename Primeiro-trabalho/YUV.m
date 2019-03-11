function yiq = YUV(imagem)
  
    yiq = rgb2ntsc(imagem);
  
%      r = imagem(:,:,1);
%      g = imagem(:,:,2);   
%      b = imagem(:,:,3);
%      
%      Y = 0.299*r +  0.587*g +  0.115*b;
%      I = 0.596*r - 0.274*g - 0.322*b;
%      Q = 0.211*r - 0.523*g  + 0.312*b;
%      
%    yiq = cat(3,Y,I,Q);         

end
  
  

