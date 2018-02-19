function IC=IC_Prj(x)

frequency_per_alphabet=[length(find(x=='A'));length(find(x=='B'));length(find(x=='C'));
length(find(x=='D'));length(find(x=='E'));length(find(x=='F'));
length(find(x=='G'));length(find(x=='H'));length(find(x=='I'));
length(find(x=='J'));length(find(x=='K'));length(find(x=='L'));
length(find(x=='M'));length(find(x=='N'));length(find(x=='O'));
length(find(x=='P'));length(find(x=='Q'));length(find(x=='R'));
length(find(x=='S'));length(find(x=='T'));length(find(x=='U'));
length(find(x=='V'));length(find(x=='W'));length(find(x=='X'));
length(find(x=='Y'));length(find(x=='Z'))];



L=length(x);
den=L*(L-1);
num=sum(frequency_per_alphabet.*(frequency_per_alphabet-1));
IC=num/den;

end