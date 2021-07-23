#!/bin/bash

# There are two fundamental loop commands.
# 1. while
# 2. for

# Loops are used to iterate the commands again and again based on some logic

## While loop
# while [ expression ] ; do
# commands
#done

## Ex: Run a loop for 10 times
i=10
j=1
while [ $i -gt 0 ]; do
  echo Iteration = $j
  j=$(($j+1))
  i=$(($i-1))
done

## For loop
# for var in value1 value2 ... valuen ; do
# Commands
#done

## Print multiple fruit names

for fruit in apple banana orange kiwi ; do
  echo $fruit
done

# above loop will iterate for 4 times as there are 4 values
