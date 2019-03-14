function saida = rgb2yiq(entrada)
%Conversão RGB para YIQ

%separação do planos da imagem  - possui três planos
R = entrada(:,:,1); 
G = entrada(:,:,2);
B = entrada(:,:,3);

Conv=[.299 .587 .114;.596 -.275 -.321;.212 -.523 .311];

for i=1:3
   saida(:,:,i)=Conv(1,i)*R+Conv(2,i)*G+Conv(3,i)*B;
endfor

endfunction