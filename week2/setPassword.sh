#!/bin/bash

echo "Hi, We are going to store your passwords" #Here I am telling the user what we are doing

echo #I am adding an extra line so it is not all bunched up

read -p "Please type in the folder you want it stored in: " passFolder #I am asking what the name of the folder will be and storing that name

echo #Adding another line

read -p "Now please type in the password you want to use: " wordPass #I am asking what password that they would like to use and storing that

mkdir $passFolder #I am creating the folder

echo $wordPass > $passFolder/secret.txt #I am putting the password that they wanted to use into a txt file into the folder they wanted

exit 0