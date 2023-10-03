#!/bin/bash

courses=() # Initialize the array

read -p "Enter the number of courses you have " coursecount

for ((i=1; i<=coursecount; i++)); do
    read -p "Enter the name of the course: " coursename
    courses+=("$coursename")
done

read -p "How many assignments do you have: " assignmentcount

for ((i=0; i<${#courses[@]}; i++)); do
    for ((j=0; j<assignmentcount; j++)) do
        mkdir -p "./$courses[i]/A$j"
    done
done

echo "Created" $coursecount "folders with" $assignmentcount "subfolders."


echo "Created $coursecount folders named ${courses[@]} with $assignmentcount subfolders."

