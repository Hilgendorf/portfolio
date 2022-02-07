#!/bin/bash

val_a=25
val_b=23

# -eq demonstration

if [ "$val_a" -eq "$val_b" ]; then
    echo "The integers are the same"
else    
    echo "The integers are not the same"
 fi

# -ne demonstration

if [ "$val_a" -ne "$val_b" ]; then
    echo "The integers are not the same"
else    
    echo "The integers are the same"
fi

# -gt demonstration

if [ "$val_a" -gt "$val_b" ]; then
    echo "Value A is greater than Value B"
else    
    echo "Value A is not greater than Value B"
fi

# -ge demonstration

if [ "$val_a" -ge "$val_b" ]; then
    echo "Value A is greater than or equal to Value B"
else    
    echo "Value A is NOT greater than or equal to Value B"
fi

# -lt demonstration

if [ "$val_a" -lt "$val_b" ]; then
    echo "Value A is less than Value B"
else    
    echo "Value A is NOT less than Value B"
fi

# -le demonstration

if [ "$val_a" -le "$val_b" ]; then
    echo "Value A is less than or equal to Value B"
else    
    echo "Value A is NOT less than or equal to Value B"
fi

exit 0