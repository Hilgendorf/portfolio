#!/bin/bash

read -p "Please type the name of the folder you would like to create" folderName

mkdir "$folderName"

echo "$folderName is now created, have a lovely day."

exit 0