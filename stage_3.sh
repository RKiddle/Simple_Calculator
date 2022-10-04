#!/usr/bin/env bash 

echo "Enter an arithmetic operation: "
read eqn
re='^[-0-9 ]+ [-,+,*,/,^] [-0-9]+$'
if [[ $eqn =~ $re ]]; then
    bc -l <<< "scale=2; $eqn"
else
    echo "Operation check failed!"
fi
