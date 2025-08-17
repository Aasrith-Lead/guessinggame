#!/bin/bash
# Guessing Game: guess how many regular files are in the current directory

# Function: count how many files
count_files() {
  find . -maxdepth 1 -type f | wc -l
}

# Function: ask user for a guess
ask_guess() {
  read -p "How many files are in this directory? " guess
}

echo "Welcome to the Guessing Game!"
actual=$(count_files)

while true; do
  ask_guess
  if [[ $guess -lt $actual ]]; then
    echo "Too low! Try again."
  elif [[ $guess -gt $actual ]]; then
    echo "Too high! Try again."
  else
    echo "🎉 Correct! There are $actual files."
    break
  fi
done

