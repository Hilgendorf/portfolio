#!/bin/bash

echo "Hi There, please put in your name for access"
read name
if [ $name = "Michael" ]; then
echo "Hello Michael, you have access"
else
echo "Sorry $name, no access for you"
fi
exit 0