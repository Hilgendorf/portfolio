#!/bin/bash

./passwordCheck.sh #Calling up the script passwordCheck

return_code=$? #This fetches the return code of the passwordCheck script

if [ $return_code -eq 0 ] #This if statement checks if the return code equals 0
then
    echo "1. Create a folder" #If the return code equals 0 then it will echo these menu options
    echo "2. Copy a folder" 
    echo "3. Set a password"
    read -p "Please select an option: " menOption #This reads their menu option
else
    exit 0 #If the return code does not equals 0 it will exit
    
fi

if [ "$menOption" -eq 1 ]; then #If they select menu option 1 then it will open folderCreator
    ./folderCreator.sh
elif [ "$menOption" -eq 2 ]; then #If they select menu option 2 then it will open folderCopier
    ./folderCopier.sh
elif [ "$menOption" -eq 3 ]; then #If they select menu option 3 then it will open setPassword
    ./setPassword.sh
else
    echo "Sorry, that is not a menu option" #If they do not put the right menu option it will echo this
fi
echo "Goodbye" #Afterwards saying goodbye

exit 1