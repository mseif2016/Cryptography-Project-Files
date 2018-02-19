function PlainText=Vignere_cipher_Seif(x)

%Conversion from Characters to numbers:

% A --> 65
% Z --> 90


%Read the cipher text:

%filename = 'cipher23.txt';
%delimiterIn = ' ';
%headerlinesIn = 0;
%CipherText_pre= importdata(filename, delimiterIn);
%CipherText = cell2mat(CipherText_pre)';
CipherText = x;



%Index of Coincidence:
%Vignere cipher ranges between 0.038 and 0.065

IC=IC_Prj(CipherText)

Convert_CipherText_2_numbers= double(CipherText);

for k_length=1:20;
    %k_length=6; The true key
    Reshaped_num_vector=reshape(Convert_CipherText_2_numbers,...
        k_length, length(Convert_CipherText_2_numbers)/k_length);
    
    for i=1:size(Reshaped_num_vector,1)
        IC_All(i)=IC_Prj(Reshaped_num_vector(i,:));
    end
    if abs(IC_All - 0.065) < 0.01
        break;
    end
end

%Determine the shift:
%From the frequency analysis, see the most frequent letter
%in the cipher text. The shift will be the difference
%between this letter from cipher text and the letter E.




%Frequency Analysis:
for i=1: k_length
    Most_frequent_number=mode(Reshaped_num_vector(i, :));
    shift(i)=Most_frequent_number-69; %69 is the index of letter E
    %Decrypt the shift cipher:
    Plain_text_reshaped(i, :)=...
        mod(Reshaped_num_vector(i,:)-65-shift(i), 26);
end

PlainText= char(reshape(Plain_text_reshaped, length(CipherText), 1)+65);

%Show the output (i.e., plain text)

PlainText'
k_length
end