#!/bin/bash

function addition() {
    sum=$((num_1 + num_2))
    echo $sum
}

function subtraction() {
    subt=$((num_1 - num_2))
    echo $subt
}

function multiplication() {
    mult=$((num_1 * num_2))
    echo $mult
}

function division() {
    div=$((num_1 / num_2))
    echo $div
}

function average() {
    sum_of_nums=$((num_1 + num_2))
    avg=$((sum_of_nums / 2))
    echo $avg
}

function quit() {
    exit_flag=true
}

exit_flag=false

while [ "$exit_flag" = false ]; do
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Average"
    echo "6. Quit"

    read -p "Which operation do you want to perform: " choice_number

    if [[ "$choice_number" -lt 1 || "$choice_number" -gt 6 ]]; then
        echo "Please enter a choice in the range 1-6"
        continue
    fi

    read -p "Enter number 1: " num_1
    read -p "Enter number 2: " num_2

    case $choice_number in
        1) addition ;;
        2) subtraction ;;
        3) multiplication ;;
        4) division ;;
        5) average ;;
        6) quit ;;
        *)
            echo "Please enter a valid choice"
            ;;
    esac
done
