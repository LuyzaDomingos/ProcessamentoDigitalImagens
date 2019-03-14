function g=yiq2rgb(imagem);
%Conversão YIQ - RGB

%separação do planos da imagem  - possui três planos
Y = imagem(:,:,1); 
I = imagem(:,:,2);
Q = imagem(:,:,3);

Conv=inv([.299 .587 .114;.596 -.275 -.321;.212 -.523 .311]);

for i=1:3
   g(:,:,i)=Conv(1,i)*Y+Conv(2,i)*I+Conv(3,i)*Q;
endfor

endfunction
