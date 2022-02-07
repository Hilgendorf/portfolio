#!/bin/bash

read -s -p "Now please type in the password you want to use: " wordPass #I am asking what password that they would like to use and storing that

echo "$wordPass" | sha256sum > ./notpasswords/temp.txt # I stored their entered password into a temp file to be able to read it

entPass="./notpasswords/temp.txt" #I put in the entered hashed password as the variable entPass
offPass="./notpasswords/secret.txt" #I put in the official hashed password as the variable offPass

if cmp -s "$entPass" "$offPass" #here I am comparing the two variables to see if they are the same
then
        echo "Access Granted" #Echoing access granted if the variable is the same
    rm ./notpasswords/temp.txt #removing the temporary file
exit 0
else
        echo "Access Denied" #Echoing access denied if the variable is not the same
    rm ./notpasswords/temp.txt #removing the temporary file
fi

exit 1