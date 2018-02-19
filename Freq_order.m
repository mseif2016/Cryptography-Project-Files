function Order=Freq_order(x)

frequency_per_alphabet=[length(find(x=='A'));length(find(x=='B'));length(find(x=='C'));
length(find(x=='D'));length(find(x=='E'));length(find(x=='F'));
length(find(x=='G'));length(find(x=='H'));length(find(x=='I'));
length(find(x=='J'));length(find(x=='K'));length(find(x=='L'));
length(find(x=='M'));length(find(x=='N'));length(find(x=='O'));
length(find(x=='P'));length(find(x=='Q'));length(find(x=='R'));
length(find(x=='S'));length(find(x=='T'));length(find(x=='U'));
length(find(x=='V'));length(find(x=='W'));length(find(x=='X'));
length(find(x=='Y'));length(find(x=='Z'))]/length(x);

Y=sort(frequency_per_alphabet);
Order=zeros(1,26);


for i=26:-1:1
   
    Order(27-i)=find(frequency_per_alphabet==Y(i))-1;

end
