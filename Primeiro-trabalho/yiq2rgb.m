function g=yiq2rgb(f);
%Conversão YIQ - RGB

Y=f(:,:,1); % desmembra canais
I=f(:,:,2);
Q=f(:,:,3);

Conv=inv([.299 .587 .114;.596 -.275 -.321;.212 -.523 .311]);

for i=1:3
   g(:,:,i)=Conv(1,i)*Y+Conv(2,i)*I+Conv(3,i)*Q;
end