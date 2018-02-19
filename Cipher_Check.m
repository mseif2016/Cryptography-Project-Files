function Cipher=Cipher_Check(x)

IC=IC_Prj(x);


if IC>0.06  %possible to be permutation, substitution, or shift
    
    letters_frequency=Freq_order(x);
    Most_freq_letter=letters_frequency(1);   % the most frequent letters in numbers  a=0, ... ,z=25
    
    
    if Most_freq_letter==4    %the letter e
     % it has the same frequency analysis  of the plaintext
        Cipher=1;
    elseif mod(letters_frequency(1)-4,26)==mod(letters_frequency(2)-19,26) 
        % the shift between the most frequent letter and 'e'=4 is the same
        % as the shift between the second letter and 't'=19, then we have a
        % fixed shift
         Cipher=2;
    else
         Cipher=3;
    end
elseif IC<0.04  %it is a random cipher, one time pad is used
     Cipher=4;
else
     Cipher=5;        
end
    