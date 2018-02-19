function PlainText=Shift_Cipher_Seif(x)

%Conversion from Characters to numbers:

% A --> 65
% Z --> 90


CipherText=x;

%Determine the shift:
%From the frequency analysis, see the most frequent letter
%in the cipher text. The shift will be the difference
%between this letter from cipher text and the letter E.

Convert_CipherText_2_numbers= double(CipherText);

%Index of Coincidence:

IC=IC_Prj(CipherText);

%Comment: Shift cipher has the same IC of English plaintext
%which is approximately 0.0667

%Frequency Analysis: 

%hist(Convert_CipherText_2_numbers,1000)
%xlabel('Letters');
%ylabel('Frequency');
%title('Frequency of letters in the ciphertext')
Most_frequent_number=mode(Convert_CipherText_2_numbers);
shift=Most_frequent_number-69; %69 is the index of letter E

%Decrypt the shift cipher:

for i=1:numel(CipherText)
    numericChar=double(CipherText(i));
    numericChar=mod(numericChar-65+shift,26);
    PlainText(i,1)=char(numericChar+65);
end


%Show the output (i.e., plain text)

end

