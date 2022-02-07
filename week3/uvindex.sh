#!/bin/bash

read -p 'Enter a UV index from 0 to 11: ' uvvalue

if [ "$uvvalue" -le 2 ]; then 
    echo "UV Index is at a Low level. Minimal protection required"
elif [[ "$uvvalue" -ge 3 ]] && [[ "$uvvalue" -le 7 ]]; then
    echo "UV Index is at Moderate to High levels. Standard protection required"
elif [[ "$uvvalue" -ge 8 ]] && [[ "$uvvalue" -le 11 ]]; then
    echo "UV Index is at Very High to Extreme levels. Full protective measures required or do not go outside"
else
    echo "Sorry, you did not put a number between 0 to 11 so I cannot help you. Goodbye"
fi

exit 0