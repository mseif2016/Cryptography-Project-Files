function plaintext=Substitution_Cipher(x)



letter_frequency_order=Freq_order(x);   % get all letters ordered from most to leased based on frequency  (a=0,...,z=25)
plaintext_order='etaoinsrhldcumfpgwybvkxjqz';   % the corresponding order of english plantext
y=x;   %Initiate y

% the for loop substitude each letter in x with the corresponding one in plaintext_order

for i=1:26
    y(x==num_to_lett2(letter_frequency_order(i)))=plaintext_order(i);
end

%The answer is not true but we can see that the plaintext is the united
%states constitution

% take user input
y_suggested=y;


% it should take input is follows in comments


%disp('Do you have any suggestion to switch between letter?') 
%user_suggestion = 'write it as one multiple rows matrix each row has the form [old letter  new letter], put in numbers, a=0, ..., z=25 ';
%s= input(user_suggestion);

s=[21 22;20 5;12 20;18 8;8 18;5 12;6 1;23 9;22 24;1 21;24 6;10 23;9 10];
%the user inputs suggestion, it should be s=[21 22;20 5;12 20;18 8;8 18;5 12;6 1;23 9;22 24;1 21;24 6;10 23;9 10]
for i=1:size(s,1)
    y_suggested(y==num_to_lett(s(i,1)))=num_to_lett(s(i,2));  %apply suggestion
end

plaintext=y_suggested;    



end