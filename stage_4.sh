#!/usr/bin/env bash 

touch operation_history.txt

echo "Welcome to the basic calculator!"
echo "Welcome to the basic calculator!" >> operation_history.txt

re='^[-+]?[-0-9 ]+*\.?[0-9]* [-,+,*,/,^] [-+]?[-0-9]+*\.?[0-9]*$'

while true; do

    echo "Enter an arithmetic operation or type 'quit' to quit:" 
    echo "Enter an arithmetic operation or type 'quit' to quit:" >> operation_history.txt
    read eqn 
    echo "$eqn" >> operation_history.txt

    if [[ $eqn =~ $re ]]; then
        bc -l <<< "scale=2; $eqn" 

        bc -l <<< "scale=2; $eqn"  >> operation_history.txt

    elif [ $eqn == "quit" ]; then
        echo "Goodbye!"
        echo "Goodbye!" >> operation_history.txt
        break 
    
    else
        echo "Operation check failed!" 
        echo "Operation check failed!" >> operation_history.txt
    fi

done

